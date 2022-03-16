package ru.job4j.forum.repository;

import org.springframework.stereotype.Repository;
import ru.job4j.forum.model.Post;

import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

@Repository
public class PostMem {
    private final Map<Integer, Post> posts = new HashMap<>();

    private static final AtomicInteger ID = new AtomicInteger(2);

    public PostMem() {
        Post post1 = Post.of("Post_1", "Description_1");
        post1.setId(1);
        Post post2 = Post.of("Post_2", "Description_2");
        post2.setId(2);
        posts.put(1, post1);
        posts.put(2, post2);
    }

    public Collection<Post> findAllPosts() {
        return posts.values();
    }

    public Post findPostById(int id) {
        return posts.get(id);
    }

    public void create(Post post) {
        if (post.getId() == 0) {
            post.setId(ID.incrementAndGet());
        }
        post.setCreated(new Date());
        posts.put(post.getId(), post);
    }
}
