.class public final Lcom/loc/da;
.super Lcom/loc/fs;
.source "SourceFile"


# direct methods
.method private static a(Lcom/loc/fr;)I
    .locals 0

    invoke-virtual {p0}, Lcom/loc/fr;->b()I

    move-result p0

    return p0
.end method

.method public static a(Lcom/loc/fr;BBSBI)I
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/loc/fr;->b(I)V

    invoke-static {p0, p5}, Lcom/loc/da;->a(Lcom/loc/fr;I)V

    invoke-static {p0, p3}, Lcom/loc/da;->a(Lcom/loc/fr;S)V

    invoke-static {p0, p4}, Lcom/loc/da;->c(Lcom/loc/fr;B)V

    invoke-static {p0, p2}, Lcom/loc/da;->b(Lcom/loc/fr;B)V

    invoke-static {p0, p1}, Lcom/loc/da;->a(Lcom/loc/fr;B)V

    invoke-static {p0}, Lcom/loc/da;->a(Lcom/loc/fr;)I

    move-result p0

    return p0
.end method

.method private static a(Lcom/loc/fr;B)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/loc/fr;->a(IB)V

    return-void
.end method

.method private static a(Lcom/loc/fr;I)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/loc/fr;->b(II)V

    return-void
.end method

.method private static a(Lcom/loc/fr;S)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/loc/fr;->a(IS)V

    return-void
.end method

.method private static b(Lcom/loc/fr;B)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/loc/fr;->a(IB)V

    return-void
.end method

.method private static c(Lcom/loc/fr;B)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/loc/fr;->a(IB)V

    return-void
.end method
