package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.model.Article;
import com.example.demo.repository.ArticleRepository;

@Service
@Transactional
public class ArticleServiceImpl implements ArticleService{

	@Autowired
	ArticleRepository articleRepository;
	
	@Override
	public List<Article> getAllArticles() {
		// TODO Auto-generated method stub
		return (List<Article>) articleRepository.findAll();
	}

	@Override
	public Article getArticleById(long id) {
		// TODO Auto-generated method stub
		return articleRepository.findById(id).get();
	}

	@Override
	public void saveOrUpdate(Article article) {
		// TODO Auto-generated method stub
		articleRepository.save(article);
		
	}

	@Override
	public void deleteArticle(long id) {
		// TODO Auto-generated method stub
		articleRepository.deleteById(id);
	}

}
