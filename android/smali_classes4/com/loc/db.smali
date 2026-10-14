.class public final Lcom/loc/db;
.super Lcom/loc/fs;
.source "SourceFile"


# direct methods
.method private static a(Lcom/loc/fr;)I
    .locals 0

    invoke-virtual {p0}, Lcom/loc/fr;->b()I

    move-result p0

    return p0
.end method

.method public static a(Lcom/loc/fr;BI)I
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/loc/fr;->b(I)V

    invoke-static {p0, p2}, Lcom/loc/db;->a(Lcom/loc/fr;I)V

    invoke-static {p0, p1}, Lcom/loc/db;->a(Lcom/loc/fr;B)V

    invoke-static {p0}, Lcom/loc/db;->a(Lcom/loc/fr;)I

    move-result p0

    return p0
.end method

.method public static a(Lcom/loc/fr;[B)I
    .locals 2

    array-length v0, p1

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v1}, Lcom/loc/fr;->a(III)V

    array-length v0, p1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/loc/fr;->a(B)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/loc/fr;->a()I

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

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/loc/fr;->b(II)V

    return-void
.end method
