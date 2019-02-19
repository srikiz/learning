using System;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Options;
using System.Collections.Generic;
using SimpleWebAPI.Models;

namespace SimpleWebAPI.Controllers
{
    [Route("/[controller]")]
    public class ArticlesController : Controller
    {

        [HttpGet(Name = nameof(GetArticles))]
        public IActionResult GetArticles()
        {
            var articleList = new List<ArticleResource>() {
                new ArticleResource() {
                    Title = "Article - 1",
                    Description = "Test Desc - 1"
                },
                new ArticleResource() {
                    Title = "Article - 2",
                    Description = "Test Desc - 2"
                }
            };

            return Ok(articleList);
        }

        [HttpGet("{articleId}", Name = nameof(GetArticleById))]
        public IActionResult GetArticleById(string articleId)
        {
            if (articleId == null) return NotFound();

            var article = new ArticleResource() {
                Title = "Article - 1",
                Description = "Testing"
            };

            return Ok(article);
        }
    }
}
