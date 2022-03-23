package ru.job4j.forum.service;

import org.springframework.stereotype.Service;
import ru.job4j.forum.model.Post;
import ru.job4j.forum.repository.PostRepository;

import java.util.Collection;
import java.util.Date;

@Service
public class PostService {

    private final PostRepository posts;

    public PostService(PostRepository posts) {
        this.posts = posts;
    }

    public Collection<Post> getAll() {
        return posts.findByOrderById();
    }

    public void create(Post post) {
        post.setCreated(new Date());
        this.posts.save(post);
    }

    public Post findPostById(int id) {
        return posts.findPostById(id);
    }
}
