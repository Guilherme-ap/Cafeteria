package Model;

import java.util.ArrayList;
import java.util.List;

public class ShoppingCart {
    private int userId;
    private List<Item> items;

    public ShoppingCart(int userId) {
        this.userId = userId;
        this.items = new ArrayList<>();
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }
}
