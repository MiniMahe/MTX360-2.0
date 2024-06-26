﻿using CN;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using MVC.Models;
using Octokit;
using static System.Net.Mime.MediaTypeNames;

namespace MVC.Controllers
{
    [Authorize]
    public class HomeController : Controller
    {
        private const string GITHUB_TOKEN = "";
        private const string OWNER = "MiniMahe";
        private const string REPO = "MTX360";
        private const string BRANCH = "main";
        private const string COMMIT_MESSAGE = "Subiendo imagen mediante API";
        
        public IActionResult Index()
        {
            return View("Index");
        }
        public IActionResult Imagenes(int page = 1, int pageSize = 5)
        {
            CN_Image clase = new CN_Image();
            List<CN_Image> todaslasimagenes = new List<CN_Image>();
            Imagen lista = new Imagen();
            todaslasimagenes = clase.Getimage();
            foreach (CN_Image Negocio in todaslasimagenes)
            {
                Imagen imagen = new Imagen();
                imagen.id = Negocio.id;
                imagen.nombre = Negocio.Name;
                imagen.ruta = Negocio.ruta;
                imagen.x = Negocio.x;
                imagen.y = Negocio.y;
                imagen.piso = Negocio.piso;

                lista.list.Add(imagen);
            }

            // Lógica de paginación
            int totalItems = lista.list.Count;
            lista.CurrentPage = page;
            lista.TotalPages = (int)Math.Ceiling(totalItems / (double)pageSize);
            lista.list = lista.list.Skip((page - 1) * pageSize).Take(pageSize).ToList();
            return View(lista);
        }
        public IActionResult Planta2()
        {
            ListaClases listaClases = new ListaClases();
            listaClases.RellenarLista(1);
            ViewData["piso"] = "2";

            return View("Index", listaClases);
        }
        public IActionResult Planta3()
        {
            ListaClases listaClases = new ListaClases();
            listaClases.RellenarLista(2);
            ViewData["piso"] = "3";


            return View("Index", listaClases);
        }
        

        public async Task<IActionResult> LogOut()
        {
            await HttpContext.SignOutAsync(CookieAuthenticationDefaults.AuthenticationScheme);
            return RedirectToAction("Login", "Access");
        }
        public IActionResult Flechas(int page = 1, int pageSize = 15)
        {
            CN_Arrow negocio = new CN_Arrow();
            List<CN_Arrow> lista = negocio.GetArrow();
            Arrows flechas = new Arrows();

            foreach (CN_Arrow arrow in lista)
            {
                Arrows flecha = new Arrows
                {
                    id = arrow.id,
                    id_image = arrow.id_image,
                    nodeid = arrow.nodeid,
                    posicion = arrow.posicion
                };
                flechas.list.Add(flecha);
            }

            // Lógica de paginación
            int totalItems = flechas.list.Count;
            flechas.CurrentPage = page;
            flechas.TotalPages = (int)Math.Ceiling(totalItems / (double)pageSize);
            flechas.list = flechas.list.Skip((page - 1) * pageSize).Take(pageSize).ToList();

            return View(flechas);
        }

        public IActionResult CFlecha()
        {
            return View();
        }
        [HttpPost]
        public IActionResult CFlecha(Arrows flecha)
        {
            CN_Arrow negocio = new CN_Arrow();
            negocio.Crear(flecha.id_image, flecha.nodeid, flecha.posicion);
            return RedirectToAction("Flechas");

        }
        public IActionResult EdFlecha(int id, int idimg, int nodo, string pos)
        {
            Arrows flecha = new Arrows();
            flecha.id = id;
            flecha.id_image = idimg;
            flecha.nodeid = nodo;
            flecha.posicion = pos;
            return View(flecha);
        }
        [HttpPost]
        public IActionResult EdFlecha(Arrows flecha)
        {
            CN_Arrow negocio = new CN_Arrow();
            negocio.Editar(flecha.id, flecha.id_image, flecha.nodeid, flecha.posicion);
            return RedirectToAction("Flechas");
        }
        public IActionResult ElFlecha(int id)
        {
            CN_Arrow negocio = new CN_Arrow();
            negocio.Eliminar(id);
            return RedirectToAction("Flechas");
        }
        
        public IActionResult CImagen()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> CImagen(Imagen imagen)
        {
            if (imagen.ImageFile == null || imagen.ImageFile.Length == 0)
            {
                ModelState.AddModelError("", "Por favor seleccione un archivo de imagen.");
                return View(imagen);
            }

            var client = new GitHubClient(new ProductHeaderValue("GitHubUploader"))
            {
                Credentials = new Credentials(GITHUB_TOKEN)
            };

            string base64Image;

            using (var memoryStream = new MemoryStream())
            {
                await imagen.ImageFile.CopyToAsync(memoryStream);
                var fileBytes = memoryStream.ToArray();
                base64Image = Convert.ToBase64String(fileBytes);
            }

            var createChangeSet = new CreateFileRequest(COMMIT_MESSAGE, base64Image, BRANCH, false);
            var fileName = Path.GetFileName(imagen.ImageFile.FileName);
            var filePath = $"fotos/{fileName}";

            try
            {
                var existingFile = await client.Repository.Content.GetAllContentsByRef(OWNER, REPO, filePath, BRANCH);

                var updateChangeSet = new UpdateFileRequest(COMMIT_MESSAGE, base64Image, existingFile[0].Sha, BRANCH,false);
                var updateFile = await client.Repository.Content.UpdateFile(OWNER, REPO, filePath, updateChangeSet);
            }
            catch (NotFoundException)
            {
                var createFile = await client.Repository.Content.CreateFile(OWNER, REPO, filePath, createChangeSet);
            }
            catch (Exception ex)
            {
                ModelState.AddModelError("", $"Error al subir la imagen a GitHub: {ex.Message}");
                return View(imagen);
            }

             CN_Image negocio = new CN_Image();
             negocio.Crear(fileName,imagen.nombre, imagen.x, imagen.y, imagen.piso);

            return RedirectToAction("Imagenes");
        }
        public IActionResult EdImagen(int id,string nombre, string ruta, int x, int y, int piso)
        {
            Imagen imagenes = new Imagen();
            imagenes.id = id;
            imagenes.nombre = nombre;
            imagenes.ruta = ruta;
            imagenes.x = x;
            imagenes.y = y;
            imagenes.piso = piso;
            return View(imagenes);
        }
        [HttpPost]
        public async Task<IActionResult> EdImagen(Imagen imagen)
        {
            if (imagen.ImageFile == null || imagen.ImageFile.Length == 0)
            {
                ModelState.AddModelError("", "Por favor seleccione un archivo de imagen.");
                return View(imagen);
            }

            var client = new GitHubClient(new ProductHeaderValue("GitHubUploader"))
            {
                Credentials = new Credentials(GITHUB_TOKEN)
            };

            string base64Image;

            using (var memoryStream = new MemoryStream())
            {
                await imagen.ImageFile.CopyToAsync(memoryStream);
                var fileBytes = memoryStream.ToArray();
                base64Image = Convert.ToBase64String(fileBytes);
            }

            var fileName = Path.GetFileName(imagen.ImageFile.FileName);
            var filePath = $"fotos/{fileName}";

            try
            {
                var existingFile = await client.Repository.Content.GetAllContentsByRef(OWNER, REPO, filePath, BRANCH);

                var updateChangeSet = new UpdateFileRequest(COMMIT_MESSAGE, base64Image, existingFile[0].Sha, BRANCH,false);
                var updateFile = await client.Repository.Content.UpdateFile(OWNER, REPO, filePath, updateChangeSet);
            }
            catch (Exception ex)
            {
                ModelState.AddModelError("", $"Error al subir la imagen a GitHub: {ex.Message}");
                return View(imagen);
            }
            CN_Image negocio = new CN_Image();
            negocio.Editar(imagen.id, imagen.nombre, fileName, imagen.x, imagen.y, imagen.piso);
            return RedirectToAction("Imagenes");
        }
        public async Task<IActionResult> ElImagen(int id, string ruta)
        {
            var client = new GitHubClient(new ProductHeaderValue("GitHubUploader"))
            {
                Credentials = new Credentials(GITHUB_TOKEN)
            };

            var filePath = $"fotos/{ruta}";

            try
            {
                var existingFile = await client.Repository.Content.GetAllContentsByRef(OWNER, REPO, filePath, BRANCH);

                var deleteChangeSet = new DeleteFileRequest(COMMIT_MESSAGE, existingFile[0].Sha, BRANCH);
                await client.Repository.Content.DeleteFile(OWNER, REPO, filePath, deleteChangeSet);
            }
            catch (Exception ex)
            {
                ModelState.AddModelError("", $"Error al eliminar la imagen a GitHub: {ex.Message}");
                return RedirectToAction("Imagenes");
            }

            CN_Image negocio = new CN_Image();
            negocio.Eliminar(id);
            return RedirectToAction("Imagenes");
        }
    }
}