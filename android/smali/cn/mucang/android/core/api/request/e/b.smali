.class public Lcn/mucang/android/core/api/request/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/core/http/MucangNameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private c:[B

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/io/File;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/core/api/request/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/api/request/e/a;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcn/mucang/android/core/api/request/e/b;->h:Z

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcn/mucang/android/core/api/request/e/b;->c:[B

    .line 16
    iput-object p1, p0, Lcn/mucang/android/core/api/request/e/b;->f:Ljava/io/File;

    .line 17
    iput-object p2, p0, Lcn/mucang/android/core/api/request/e/b;->g:Ljava/util/List;

    const/4 p1, 0x2

    .line 18
    iput p1, p0, Lcn/mucang/android/core/api/request/e/b;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/http/MucangNameValuePair;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/api/request/e/a;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2, v0}, Lcn/mucang/android/core/api/request/e/b;-><init>(Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/http/MucangNameValuePair;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/api/request/e/a;",
            ">;Z)V"
        }
    .end annotation

    .line 20
    invoke-static {p1}, Lcn/mucang/android/core/api/request/f/a;->e(Ljava/util/List;)[B

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcn/mucang/android/core/api/request/e/b;-><init>([BLjava/util/List;Z)V

    .line 21
    iput-object p1, p0, Lcn/mucang/android/core/api/request/e/b;->b:Ljava/util/List;

    .line 22
    iput-object p2, p0, Lcn/mucang/android/core/api/request/e/b;->g:Ljava/util/List;

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcn/mucang/android/core/api/request/e/b;->f:Ljava/io/File;

    const/4 p1, 0x1

    .line 24
    iput p1, p0, Lcn/mucang/android/core/api/request/e/b;->a:I

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/api/request/e/a;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, p4, v0}, Lcn/mucang/android/core/api/request/e/b;-><init>([BLjava/util/List;Z)V

    .line 11
    iput-object p2, p0, Lcn/mucang/android/core/api/request/e/b;->d:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcn/mucang/android/core/api/request/e/b;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/api/request/e/a;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcn/mucang/android/core/api/request/e/b;-><init>([BLjava/util/List;Z)V

    return-void
.end method

.method public constructor <init>([BLjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/api/request/e/a;",
            ">;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/core/api/request/e/b;->h:Z

    if-eqz p3, :cond_0

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/api/request/f/a;->c([B)[B

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/core/api/request/e/b;->c:[B

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcn/mucang/android/core/api/request/e/b;->c:[B

    .line 6
    :goto_0
    iput-boolean p3, p0, Lcn/mucang/android/core/api/request/e/b;->h:Z

    .line 7
    iput-object p2, p0, Lcn/mucang/android/core/api/request/e/b;->g:Ljava/util/List;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcn/mucang/android/core/api/request/e/b;->f:Ljava/io/File;

    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lcn/mucang/android/core/api/request/e/b;->a:I

    return-void
.end method

.method public static b([B)Lcn/mucang/android/core/api/request/e/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    array-length v0, p0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/core/api/request/e/b;

    const-string v1, "application/octet-stream"

    invoke-static {v1}, Lcn/mucang/android/core/api/request/f/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/mucang/android/core/api/request/e/b;-><init>([BLjava/util/List;)V

    return-object v0

    .line 3
    :cond_0
    new-instance p0, Lcn/mucang/android/core/api/exception/InternalException;

    sget v0, Lcn/mucang/android/framework/core/R$string;->core__http_post_body_error_tips:I

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c([BLjava/lang/String;)Lcn/mucang/android/core/api/request/e/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const-string p1, "application/octet-stream"

    .line 2
    :cond_0
    new-instance v0, Lcn/mucang/android/core/api/request/e/b;

    invoke-static {p1}, Lcn/mucang/android/core/api/request/f/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/core/api/request/e/b;-><init>([BLjava/util/List;)V

    return-object v0

    .line 3
    :cond_1
    new-instance p0, Lcn/mucang/android/core/api/exception/InternalException;

    sget p1, Lcn/mucang/android/framework/core/R$string;->core__http_post_body_error_tips:I

    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static d(Ljava/lang/String;[B)Lcn/mucang/android/core/api/request/e/b;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/api/request/f/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 4
    new-instance v0, Lcn/mucang/android/core/api/request/e/a;

    const/4 v1, 0x0

    const-string v2, "Content-Encoding"

    const-string v3, "tnpn2"

    invoke-direct {v0, v2, v3, v1}, Lcn/mucang/android/core/api/request/e/a;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v0, Lcn/mucang/android/core/api/request/e/b;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, v1}, Lcn/mucang/android/core/api/request/e/b;-><init>([BLjava/util/List;Z)V

    return-object v0

    .line 6
    :cond_0
    new-instance p0, Lcn/mucang/android/core/api/exception/InternalException;

    sget p1, Lcn/mucang/android/framework/core/R$string;->core__http_post_header_error_tips:I

    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    new-instance p0, Lcn/mucang/android/core/api/exception/InternalException;

    sget p1, Lcn/mucang/android/framework/core/R$string;->core__http_post_body_error_tips:I

    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e([B)Lcn/mucang/android/core/api/request/e/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "application/octet-stream"

    .line 1
    invoke-static {v0, p0}, Lcn/mucang/android/core/api/request/e/b;->d(Ljava/lang/String;[B)Lcn/mucang/android/core/api/request/e/b;

    move-result-object p0

    return-object p0
.end method

.method public static f([B)Lcn/mucang/android/core/api/request/e/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    array-length v0, p0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/core/api/request/e/b;

    invoke-static {p0}, Lcn/mucang/android/core/utils/h;->a([B)[B

    move-result-object p0

    const-string v1, "application/x-gzip"

    .line 3
    invoke-static {v1}, Lcn/mucang/android/core/api/request/f/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/mucang/android/core/api/request/e/b;-><init>([BLjava/util/List;)V

    return-object v0

    .line 4
    :cond_0
    new-instance p0, Lcn/mucang/android/core/api/exception/InternalException;

    sget v0, Lcn/mucang/android/framework/core/R$string;->core__http_post_body_error_tips:I

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g([BLjava/lang/String;Ljava/lang/String;)Lcn/mucang/android/core/api/request/e/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    array-length v0, p0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/core/api/request/e/b;

    const-string v1, "multipart/form-data"

    invoke-static {v1}, Lcn/mucang/android/core/api/request/f/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lcn/mucang/android/core/api/request/e/b;-><init>([BLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    .line 3
    :cond_0
    new-instance p0, Lcn/mucang/android/core/api/exception/InternalException;

    sget p1, Lcn/mucang/android/framework/core/R$string;->core__http_post_file_error_tips:I

    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h(Ljava/io/File;)Lcn/mucang/android/core/api/request/e/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/core/api/request/e/b;

    const-string v1, "application/octet-stream"

    invoke-static {v1}, Lcn/mucang/android/core/api/request/f/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/mucang/android/core/api/request/e/b;-><init>(Ljava/io/File;Ljava/util/List;)V

    return-object v0

    .line 3
    :cond_0
    new-instance p0, Lcn/mucang/android/core/api/exception/InternalException;

    sget v0, Lcn/mucang/android/framework/core/R$string;->core__http_post_file_error_tips:I

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static i(Ljava/util/List;)Lcn/mucang/android/core/api/request/e/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/http/MucangNameValuePair;",
            ">;)",
            "Lcn/mucang/android/core/api/request/e/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcn/mucang/android/core/api/request/e/b;->j(Ljava/util/List;Z)Lcn/mucang/android/core/api/request/e/b;

    move-result-object p0

    return-object p0
.end method

.method private static j(Ljava/util/List;Z)Lcn/mucang/android/core/api/request/e/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/http/MucangNameValuePair;",
            ">;Z)",
            "Lcn/mucang/android/core/api/request/e/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-www-form-urlencoded"

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/api/request/f/a;->e(Ljava/util/List;)[B

    move-result-object p1

    invoke-static {v0, p1}, Lcn/mucang/android/core/api/request/e/b;->d(Ljava/lang/String;[B)Lcn/mucang/android/core/api/request/e/b;

    move-result-object p1

    .line 3
    iput-object p0, p1, Lcn/mucang/android/core/api/request/e/b;->b:Ljava/util/List;

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcn/mucang/android/core/api/request/e/b;

    invoke-static {v0}, Lcn/mucang/android/core/api/request/f/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcn/mucang/android/core/api/request/e/b;-><init>(Ljava/util/List;Ljava/util/List;)V

    :goto_0
    return-object p1

    .line 5
    :cond_1
    new-instance p0, Lcn/mucang/android/core/api/exception/InternalException;

    sget p1, Lcn/mucang/android/framework/core/R$string;->core__http_post_body_error_tips:I

    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static k(Ljava/util/List;)Lcn/mucang/android/core/api/request/e/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/http/MucangNameValuePair;",
            ">;)",
            "Lcn/mucang/android/core/api/request/e/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcn/mucang/android/core/api/request/e/b;->j(Ljava/util/List;Z)Lcn/mucang/android/core/api/request/e/b;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/lang/String;)Lcn/mucang/android/core/api/request/e/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/core/api/request/e/b;

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const-string v1, "application/x-www-form-urlencoded"

    .line 3
    invoke-static {v1}, Lcn/mucang/android/core/api/request/f/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/mucang/android/core/api/request/e/b;-><init>([BLjava/util/List;)V

    return-object v0

    .line 4
    :cond_0
    new-instance p0, Lcn/mucang/android/core/api/exception/InternalException;

    sget v0, Lcn/mucang/android/framework/core/R$string;->core__http_post_body_error_tips:I

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/mucang/android/core/api/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/http/MucangNameValuePair;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcn/mucang/android/core/api/request/e/b;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/api/request/e/b;->b:Ljava/util/List;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/core/api/request/e/b;->b:Ljava/util/List;

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/core/api/request/e/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-boolean p1, p0, Lcn/mucang/android/core/api/request/e/b;->h:Z

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcn/mucang/android/core/api/request/e/b;->b:Ljava/util/List;

    invoke-static {p1}, Lcn/mucang/android/core/api/request/f/a;->e(Ljava/util/List;)[B

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/api/request/f/a;->c([B)[B

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/core/api/request/e/b;->c:[B

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/core/api/request/e/b;->b:Ljava/util/List;

    invoke-static {p1}, Lcn/mucang/android/core/api/request/f/a;->e(Ljava/util/List;)[B

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/core/api/request/e/b;->c:[B

    :cond_3
    :goto_0
    return-void
.end method

.method public m()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/request/e/b;->c:[B

    return-object v0
.end method

.method public n()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/request/e/b;->f:Ljava/io/File;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/request/e/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/api/request/e/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/request/e/b;->g:Ljava/util/List;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/request/e/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public r()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/request/e/b;->g:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/api/request/f/a;->d(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart/form-data"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public s()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/core/api/request/e/b;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
