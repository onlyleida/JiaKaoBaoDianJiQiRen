.class public final Lcn/mucang/android/facelib/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/facelib/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u0004H\u0002J\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004J\u0016\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004J\u0006\u0010\u0015\u001a\u00020\u0016J \u0010\u0017\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0004J\u001e\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000cJ&\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u001cJ\u0006\u0010\u001d\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcn/mucang/android/facelib/FaceDebugUtil$Companion;",
        "",
        "()V",
        "DEBUG_PATH",
        "",
        "clearRegisterFace",
        "",
        "deleteUserRegisterFace",
        "studentId",
        "mark",
        "encryptFace",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "data",
        "",
        "getFile",
        "Ljava/io/File;",
        "child",
        "getMatchedFaceFile",
        "getRegisterFaceCount",
        "",
        "isDebug",
        "",
        "logMatchedFaceBase64",
        "compareFile",
        "saveMatchedFace",
        "saveRegisterFace",
        "angleY",
        "",
        "trimOldFile",
        "facelib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/facelib/o$a;-><init>()V

    return-void
.end method

.method private final c(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3
    sget-object p1, Lcn/mucang/android/facelib/o;->a:Lcn/mucang/android/facelib/o$a;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "it.toByteArray()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v1}, Lcn/mucang/android/facelib/o$a;->d([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lkotlin/io/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final d([B)Ljava/lang/String;
    .locals 7

    .line 1
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string p1, ""

    return-object p1

    .line 2
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const-string v0, "(this as java.lang.String).getBytes(charset)"

    if-eqz v1, :cond_3

    .line 3
    sget-object v1, Lkotlin/text/d;->a:Ljava/nio/charset/Charset;

    const-string v3, "888"

    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 4
    :cond_3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lkotlin/text/d;->a:Ljava/nio/charset/Charset;

    const-string v4, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    :goto_2
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_5

    const/4 v3, 0x0

    :goto_3
    add-int/lit8 v4, v3, 0x1

    .line 6
    aget-byte v5, p1, v3

    array-length v6, v1

    rem-int v6, v3, v6

    aget-byte v6, v1, v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v3

    if-le v4, v0, :cond_4

    goto :goto_4

    :cond_4
    move v3, v4

    goto :goto_3

    .line 7
    :cond_5
    :goto_4
    invoke-static {p1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const-string v0, "encodeToString(data, Base64.DEFAULT)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final e(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TensorflowSave"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final a()V
    .locals 9

    const-string v0, ""

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/android/facelib/o$a;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_3

    .line 3
    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v4, v0, v3

    .line 4
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "success"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 7
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 8
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "studentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mark"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/facelib/o$a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p2

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    return-void

    .line 3
    :cond_2
    invoke-direct {p0, p1}, Lcn/mucang/android/facelib/o$a;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_2

    .line 4
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    .line 6
    :cond_4
    array-length p2, p1

    :goto_1
    if-ge v0, p2, :cond_6

    aget-object v1, p1, v0

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    const-string v0, "studentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mark"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "success"

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/android/facelib/o$a;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    sget-object v2, Lcn/mucang/android/facelib/o;->a:Lcn/mucang/android/facelib/o$a;

    invoke-virtual {v2}, Lcn/mucang/android/facelib/o$a;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object p1, p2

    .line 3
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    return-object v1

    .line 4
    :cond_3
    invoke-virtual {v2}, Lcn/mucang/android/facelib/o$a;->h()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, ".jpg"

    goto :goto_1

    :cond_4
    const-string p2, ""

    .line 5
    :goto_1
    new-instance v1, Ljava/io/File;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_2
    return-object v1
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const-string v0, "studentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mark"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/facelib/o$a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p2

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    return v0

    .line 3
    :cond_2
    invoke-direct {p0, p1}, Lcn/mucang/android/facelib/o$a;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    array-length v0, p1

    :goto_1
    return v0
.end method

.method public final h()Z
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "key_face_local_debug"

    .line 2
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 5

    const-string v0, "studentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mark"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "success"

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/android/facelib/o$a;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    sget-object v2, Lcn/mucang/android/facelib/o;->a:Lcn/mucang/android/facelib/o$a;

    invoke-virtual {v2}, Lcn/mucang/android/facelib/o$a;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object p1, p2

    .line 3
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    return-object v1

    .line 4
    :cond_3
    invoke-virtual {v2}, Lcn/mucang/android/facelib/o$a;->h()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string v1, ".jpg"

    .line 5
    :cond_4
    new-instance p2, Ljava/io/File;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Lcn/mucang/android/facelib/o$a;->h()Z

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x2000

    if-eqz p1, :cond_6

    .line 7
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    instance-of v2, p1, Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_5

    check-cast p1, Ljava/io/BufferedOutputStream;

    goto :goto_1

    :cond_5
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object p1, v2

    .line 8
    :goto_1
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p3, v1, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {p1, v0}, Lkotlin/io/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception p2

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p3

    invoke-static {p1, p2}, Lkotlin/io/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3

    .line 10
    :cond_6
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lkotlin/text/d;->a:Ljava/nio/charset/Charset;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, p1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    instance-of p1, v4, Ljava/io/BufferedWriter;

    if-eqz p1, :cond_7

    check-cast v4, Ljava/io/BufferedWriter;

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/io/BufferedWriter;

    invoke-direct {p1, v4, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    move-object v4, p1

    .line 11
    :goto_2
    :try_start_2
    invoke-direct {v2, p3}, Lcn/mucang/android/facelib/o$a;->c(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 12
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 13
    invoke-static {v4, v0}, Lkotlin/io/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 14
    :goto_3
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string p1, "file.absolutePath"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_4
    return-object v1

    :catchall_2
    move-exception p1

    .line 15
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p2

    invoke-static {v4, p1}, Lkotlin/io/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;F)Ljava/lang/String;
    .locals 4

    const-string v0, "studentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mark"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/facelib/o$a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p2

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const-string v0, ""

    if-eqz p2, :cond_2

    return-object v0

    .line 3
    :cond_2
    invoke-direct {p0, p1}, Lcn/mucang/android/facelib/o$a;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_3

    goto/16 :goto_4

    .line 4
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string p2, "yyyy_MM_dd__HH_mm_ss"

    invoke-static {p2, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/y;->d(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p2

    .line 5
    sget-object v1, Lcn/mucang/android/facelib/o;->a:Lcn/mucang/android/facelib/o$a;

    invoke-virtual {v1}, Lcn/mucang/android/facelib/o$a;->h()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, ".jpg"

    .line 6
    :cond_4
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int p4, p4

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p4, 0x5f

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Lcn/mucang/android/facelib/o$a;->h()Z

    move-result p1

    const/4 p2, 0x0

    const/16 p4, 0x2000

    if-eqz p1, :cond_6

    .line 8
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    instance-of v0, p1, Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/io/BufferedOutputStream;

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p1, p4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object p1, v0

    .line 9
    :goto_1
    :try_start_0
    sget-object p4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-virtual {p3, p4, v0, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {p1, p2}, Lkotlin/io/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception p2

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p3

    invoke-static {p1, p2}, Lkotlin/io/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3

    .line 11
    :cond_6
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v0, Lkotlin/text/d;->a:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, p1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    instance-of p1, v3, Ljava/io/BufferedWriter;

    if-eqz p1, :cond_7

    check-cast v3, Ljava/io/BufferedWriter;

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/io/BufferedWriter;

    invoke-direct {p1, v3, p4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    move-object v3, p1

    .line 12
    :goto_2
    :try_start_2
    invoke-direct {v1, p3}, Lcn/mucang/android/facelib/o$a;->c(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 13
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 14
    invoke-static {v3, p2}, Lkotlin/io/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 15
    :goto_3
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string p1, "imgFile.absolutePath"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_4
    return-object v0

    :catchall_2
    move-exception p1

    .line 16
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p2

    invoke-static {v3, p1}, Lkotlin/io/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final k()V
    .locals 12

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const-string v1, ""

    .line 2
    invoke-direct {p0, v1}, Lcn/mucang/android/facelib/o$a;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_3

    .line 3
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_3

    .line 4
    :cond_1
    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_5

    aget-object v7, v1, v6

    .line 5
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 6
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_4

    aget-object v10, v7, v9

    .line 8
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 9
    invoke-virtual {v0, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    add-long/2addr v2, v10

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 11
    :cond_5
    :goto_3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    const-string v4, "\u4eba\u8138\u7167\u7247\u672c\u5730\u5b58\u50a8\u7a7a\u95f4\u5360\u7528\uff1a"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    const-wide/32 v4, 0x3200000

    cmp-long v1, v2, v4

    if-lez v1, :cond_7

    .line 12
    new-instance v1, Lcn/mucang/android/facelib/o$a$a;

    invoke-direct {v1}, Lcn/mucang/android/facelib/o$a$a;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/s;->G0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 14
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_6

    const-wide/32 v4, 0x1e00000

    cmp-long v6, v2, v4

    if-lez v6, :cond_6

    .line 15
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 16
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_4

    :cond_7
    return-void
.end method
