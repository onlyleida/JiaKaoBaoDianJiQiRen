.class public Lcom/serenegiant/utils/DocumentFileHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDocumentFile(Landroid/content/Context;Landroidx/documentfile/a/a;Landroid/net/Uri;)Landroidx/documentfile/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 11
    invoke-virtual {p1}, Landroidx/documentfile/a/a;->g()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/serenegiant/utils/UriHelper;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {p0, p2}, Lcom/serenegiant/utils/UriHelper;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 14
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 15
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-static {p0, p1, p2}, Lcom/serenegiant/utils/DocumentFileHelper;->getDocumentFile(Landroid/content/Context;Landroidx/documentfile/a/a;Ljava/lang/String;)Landroidx/documentfile/a/a;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDocumentFile(Landroid/content/Context;Landroidx/documentfile/a/a;Ljava/lang/String;)Landroidx/documentfile/a/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "/"

    .line 2
    invoke-virtual {p2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 3
    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_4

    aget-object v1, p0, v0

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 5
    invoke-virtual {p1, v1}, Landroidx/documentfile/a/a;->d(Ljava/lang/String;)Landroidx/documentfile/a/a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2}, Landroidx/documentfile/a/a;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object p1, v2

    goto :goto_1

    :cond_0
    if-nez v2, :cond_2

    .line 7
    invoke-virtual {p1}, Landroidx/documentfile/a/a;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {p1, v1}, Landroidx/documentfile/a/a;->b(Ljava/lang/String;)Landroidx/documentfile/a/a;

    move-result-object p1

    goto :goto_1

    .line 9
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "can\'t create directory"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "can\'t create directory, file with same name already exists"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p1
.end method
