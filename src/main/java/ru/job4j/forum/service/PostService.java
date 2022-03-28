package ru.job4j.forum.service;

import org.springframework.stereotype.Service;
import ru.job4j.forum.model.Post;
import ru.job4j.forum.repository.PostRepository;
import ru.job4j.forum.repository.UserRepository;

import java.util.Collection;
import java.util.Date;

@Service
public class PostService {

    private final PostRepository posts;

    private final UserRepository users;

    public PostService(PostRepository posts, UserRepository users) {
        this.posts = posts;
        this.users = users;
    }

    public Collection<Post> getAll() {
        return posts.findByOrderById();
    }

    public void create(Post post, String name) {
        post.setCreated(new Date());
        post.setUser(users.findByUsername(name));
        this.posts.save(post);
    }

    public Post findPostById(int id) {
        return posts.findPostById(id);
    }
}
