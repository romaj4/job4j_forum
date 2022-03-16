package ru.job4j.forum.service;

import org.springframework.stereotype.Service;
import ru.job4j.forum.model.Post;
import ru.job4j.forum.repository.PostMem;

import java.util.Collection;

@Service
public class PostService {

    private final PostMem posts;

    public PostService(PostMem posts) {
        this.posts = posts;
    }

    public Collection<Post> getAll() {
        return posts.findAllPosts();
    }

    public void create(Post post) {
        this.posts.create(post);
    }

    public Post findPostById(int id) {
        return posts.findPostById(id);
    }
}
