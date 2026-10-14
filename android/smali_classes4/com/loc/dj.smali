.class public final Lcom/loc/dj;
.super Lcom/loc/fs;
.source "SourceFile"


# direct methods
.method private static a(Lcom/loc/fr;)I
    .locals 0

    invoke-virtual {p0}, Lcom/loc/fr;->b()I

    move-result p0

    return p0
.end method

.method public static a(Lcom/loc/fr;ZJSISS)I
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/loc/fr;->b(I)V

    invoke-static {p0, p2, p3}, Lcom/loc/dj;->a(Lcom/loc/fr;J)V

    invoke-static {p0, p5}, Lcom/loc/dj;->a(Lcom/loc/fr;I)V

    invoke-static {p0, p7}, Lcom/loc/dj;->c(Lcom/loc/fr;S)V

    invoke-static {p0, p6}, Lcom/loc/dj;->b(Lcom/loc/fr;S)V

    invoke-static {p0, p4}, Lcom/loc/dj;->a(Lcom/loc/fr;S)V

    invoke-static {p0, p1}, Lcom/loc/dj;->a(Lcom/loc/fr;Z)V

    invoke-static {p0}, Lcom/loc/dj;->a(Lcom/loc/fr;)I

    move-result p0

    return p0
.end method

.method private static a(Lcom/loc/fr;I)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/loc/fr;->b(II)V

    return-void
.end method

.method private static a(Lcom/loc/fr;J)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/loc/fr;->a(IJ)V

    return-void
.end method

.method private static a(Lcom/loc/fr;S)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/loc/fr;->a(IS)V

    return-void
.end method

.method private static a(Lcom/loc/fr;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/loc/fr;->a(Z)V

    return-void
.end method

.method private static b(Lcom/loc/fr;S)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/loc/fr;->a(IS)V

    return-void
.end method

.method private static c(Lcom/loc/fr;S)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/loc/fr;->a(IS)V

    return-void
.end method
