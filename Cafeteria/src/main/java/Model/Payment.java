package Model;

import java.math.BigDecimal;
import java.time.LocalDate;

public class Payment {
    private int id;
    private int userId;
    private BigDecimal paymentAmount;
    private LocalDate paymentDate;

    public Payment() {
    }

    public Payment(int userId, BigDecimal paymentAmount, LocalDate paymentDate) {
        this.userId = userId;
        this.paymentAmount = paymentAmount;
        this.paymentDate = paymentDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public BigDecimal getPaymentAmount() {
        return paymentAmount;
    }

    public void setPaymentAmount(BigDecimal paymentAmount) {
        this.paymentAmount = paymentAmount;
    }

    public LocalDate getPaymentDate() {
        return paymentDate;
    }

    public void setPaymentDate(LocalDate paymentDate) {
        this.paymentDate = paymentDate;
    }
}
