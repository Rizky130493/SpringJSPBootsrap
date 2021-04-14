package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Article;

public interface ArticleService {

	public List<Article>getAllArticles(); 
	
	public Article getArticleById(long id);
	
	public void saveOrUpdate(Article article);
	
	public void deleteArticle(long id);
}
