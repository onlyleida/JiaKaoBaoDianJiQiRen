.class public Lcom/serenegiant/utils/SAFUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/utils/SAFUtils$FileFilter;,
        Lcom/serenegiant/utils/SAFUtils$handleOnResultDelegater;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SAFUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearUri(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    sget-object p1, Lcom/serenegiant/utils/SAFUtils;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static createStorageDir(Landroid/content/Context;I)Ljava/io/File;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isLollipop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/serenegiant/utils/SAFUtils;->getStorageUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p0, p1}, Landroidx/documentfile/a/a;->e(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/a/a;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroidx/documentfile/a/a;->g()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/serenegiant/utils/UriHelper;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createStorageFile(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/serenegiant/utils/SAFUtils;->getStorageUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/serenegiant/utils/SAFUtils;->createStorageFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static createStorageFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 2
    sget-object v0, Lcom/serenegiant/utils/SAFUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createStorageFile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isLollipop()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-static {p0, p1}, Landroidx/documentfile/a/a;->e(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/a/a;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p2, p3}, Landroidx/documentfile/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/a/a;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroidx/documentfile/a/a;->g()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/serenegiant/utils/UriHelper;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 9
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createStorageFileFD(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    sget-object v0, Lcom/serenegiant/utils/SAFUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createStorageFileFD:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0, p1}, Lcom/serenegiant/utils/SAFUtils;->getStorageUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/serenegiant/utils/SAFUtils;->createStorageFileFD(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static createStorageFileFD(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 3
    sget-object v0, Lcom/serenegiant/utils/SAFUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createStorageFileFD:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isLollipop()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-static {p0, p1}, Landroidx/documentfile/a/a;->e(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/a/a;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p2, p3}, Landroidx/documentfile/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/a/a;

    move-result-object p1

    .line 8
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/documentfile/a/a;->g()Landroid/net/Uri;

    move-result-object p1

    const-string p2, "rw"

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v1

    :catch_0
    move-exception p0

    .line 10
    sget-object p1, Lcom/serenegiant/utils/SAFUtils;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v1
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
    invoke-static {p0, p1, p2}, Lcom/serenegiant/utils/SAFUtils;->getDocumentFile(Landroid/content/Context;Landroidx/documentfile/a/a;Ljava/lang/String;)Landroidx/documentfile/a/a;

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

.method private static getKey(I)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "SDUtils-%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStorage(Landroid/content/Context;I)Landroidx/documentfile/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/serenegiant/utils/SAFUtils;->getStorage(Landroid/content/Context;ILjava/lang/String;)Landroidx/documentfile/a/a;

    move-result-object p0

    return-object p0
.end method

.method public static getStorage(Landroid/content/Context;ILjava/lang/String;)Landroidx/documentfile/a/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isLollipop()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3
    invoke-static {p0, p1}, Lcom/serenegiant/utils/SAFUtils;->getStorageUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 4
    invoke-static {p0, p1}, Landroidx/documentfile/a/a;->e(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/a/a;

    move-result-object p0

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "/"

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 7
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_4

    aget-object v1, p1, v0

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 9
    invoke-virtual {p0, v1}, Landroidx/documentfile/a/a;->d(Ljava/lang/String;)Landroidx/documentfile/a/a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10
    invoke-virtual {v2}, Landroidx/documentfile/a/a;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object p0, v2

    goto :goto_1

    :cond_0
    if-nez v2, :cond_2

    .line 11
    invoke-virtual {p0}, Landroidx/documentfile/a/a;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {p0, v1}, Landroidx/documentfile/a/a;->b(Ljava/lang/String;)Landroidx/documentfile/a/a;

    move-result-object p0

    goto :goto_1

    .line 13
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "can\'t create directory"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
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
    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStorage(Landroid/content/Context;Landroidx/documentfile/a/a;Ljava/lang/String;)Landroidx/documentfile/a/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "/"

    .line 16
    invoke-virtual {p2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 17
    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_4

    aget-object v1, p0, v0

    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 19
    invoke-virtual {p1, v1}, Landroidx/documentfile/a/a;->d(Ljava/lang/String;)Landroidx/documentfile/a/a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 20
    invoke-virtual {v2}, Landroidx/documentfile/a/a;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object p1, v2

    goto :goto_1

    :cond_0
    if-nez v2, :cond_2

    .line 21
    invoke-virtual {p1}, Landroidx/documentfile/a/a;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 22
    invoke-virtual {p1, v1}, Landroidx/documentfile/a/a;->b(Ljava/lang/String;)Landroidx/documentfile/a/a;

    move-result-object p1

    goto :goto_1

    .line 23
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "can\'t create directory"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
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

.method public static getStorageFile(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroidx/documentfile/a/a;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, p2, p3}, Lcom/serenegiant/utils/SAFUtils;->getStorageFile(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/a/a;

    move-result-object p0

    return-object p0
.end method

.method public static getStorageFile(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/a/a;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isLollipop()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {p0, p1, p2}, Lcom/serenegiant/utils/SAFUtils;->getStorage(Landroid/content/Context;ILjava/lang/String;)Landroidx/documentfile/a/a;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 4
    invoke-virtual {p0, p4}, Landroidx/documentfile/a/a;->d(Ljava/lang/String;)Landroidx/documentfile/a/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroidx/documentfile/a/a;->i()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    .line 6
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "directory with same name already exists"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    invoke-virtual {p0, p3, p4}, Landroidx/documentfile/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/a/a;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStorageFile(Landroid/content/Context;Landroidx/documentfile/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-static {p0, p1, p2}, Lcom/serenegiant/utils/SAFUtils;->getStorage(Landroid/content/Context;Landroidx/documentfile/a/a;Ljava/lang/String;)Landroidx/documentfile/a/a;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 9
    invoke-virtual {p0, p4}, Landroidx/documentfile/a/a;->d(Ljava/lang/String;)Landroidx/documentfile/a/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Landroidx/documentfile/a/a;->i()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    .line 11
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "directory with same name already exists"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_1
    invoke-virtual {p0, p3, p4}, Landroidx/documentfile/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/a/a;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStorageFileFD(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isLollipop()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {p0, p1, p2}, Lcom/serenegiant/utils/SAFUtils;->getStorage(Landroid/content/Context;ILjava/lang/String;)Landroidx/documentfile/a/a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1, p4}, Landroidx/documentfile/a/a;->d(Ljava/lang/String;)Landroidx/documentfile/a/a;

    move-result-object p2

    const-string v0, "rw"

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2}, Landroidx/documentfile/a/a;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 6
    invoke-virtual {p2}, Landroidx/documentfile/a/a;->g()Landroid/net/Uri;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "directory with same name already exists"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 10
    invoke-virtual {p1, p3, p4}, Landroidx/documentfile/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/a/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/documentfile/a/a;->g()Landroid/net/Uri;

    move-result-object p1

    .line 11
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    .line 12
    :cond_2
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    throw p0
.end method

.method public static getStorageFileFD(Landroid/content/Context;Landroidx/documentfile/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-static {p0, p1, p2}, Lcom/serenegiant/utils/SAFUtils;->getStorage(Landroid/content/Context;Landroidx/documentfile/a/a;Ljava/lang/String;)Landroidx/documentfile/a/a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p1, p4}, Landroidx/documentfile/a/a;->d(Ljava/lang/String;)Landroidx/documentfile/a/a;

    move-result-object p2

    const-string v0, "rw"

    if-eqz p2, :cond_1

    .line 15
    invoke-virtual {p2}, Landroidx/documentfile/a/a;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 17
    invoke-virtual {p2}, Landroidx/documentfile/a/a;->g()Landroid/net/Uri;

    move-result-object p1

    .line 18
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    .line 19
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "directory with same name already exists"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 21
    invoke-virtual {p1, p3, p4}, Landroidx/documentfile/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/a/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/documentfile/a/a;->g()Landroid/net/Uri;

    move-result-object p1

    .line 22
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    .line 23
    :cond_2
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    throw p0
.end method

.method public static getStorageInfo(Landroid/content/Context;Landroidx/documentfile/a/a;)Lcom/serenegiant/utils/StorageInfo;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroidx/documentfile/a/a;->g()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/serenegiant/utils/UriHelper;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v4

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    .line 8
    :cond_0
    new-instance v0, Lcom/serenegiant/utils/StorageInfo;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/serenegiant/utils/StorageInfo;-><init>(JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    nop

    .line 9
    :cond_1
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isJellyBeanMR2()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    :try_start_1
    invoke-virtual {p1}, Landroidx/documentfile/a/a;->g()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/serenegiant/utils/UriHelper;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 11
    new-instance p1, Landroid/os/StatFs;

    invoke-direct {p1, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance p0, Lcom/serenegiant/utils/StorageInfo;

    invoke-virtual {p1}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/serenegiant/utils/StorageInfo;-><init>(JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStorageInputStream(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, p2, p3}, Lcom/serenegiant/utils/SAFUtils;->getStorageInputStream(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static getStorageInputStream(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isLollipop()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 3
    invoke-static {p0, p1, p2}, Lcom/serenegiant/utils/SAFUtils;->getStorage(Landroid/content/Context;ILjava/lang/String;)Landroidx/documentfile/a/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1, p4}, Landroidx/documentfile/a/a;->d(Ljava/lang/String;)Landroidx/documentfile/a/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroidx/documentfile/a/a;->i()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 7
    invoke-virtual {p1}, Landroidx/documentfile/a/a;->g()Landroid/net/Uri;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 9
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "directory with same name already exists"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_1
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    throw p0
.end method

.method public static getStorageInputStream(Landroid/content/Context;Landroidx/documentfile/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-static {p0, p1, p2}, Lcom/serenegiant/utils/SAFUtils;->getStorage(Landroid/content/Context;Landroidx/documentfile/a/a;Ljava/lang/String;)Landroidx/documentfile/a/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1, p4}, Landroidx/documentfile/a/a;->d(Ljava/lang/String;)Landroidx/documentfile/a/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p1}, Landroidx/documentfile/a/a;->i()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 15
    invoke-virtual {p1}, Landroidx/documentfile/a/a;->g()Landroid/net/Uri;

    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 17
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "directory with same name already exists"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_1
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    throw p0
.end method

.method public static getStorageOutputStream(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, p2, p3}, Lcom/serenegiant/utils/SAFUtils;->getStorageOutputStream(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public static getStorageOutputStream(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isLollipop()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {p0, p1, p2}, Lcom/serenegiant/utils/SAFUtils;->getStorage(Landroid/content/Context;ILjava/lang/String;)Landroidx/documentfile/a/a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1, p4}, Landroidx/documentfile/a/a;->d(Ljava/lang/String;)Landroidx/documentfile/a/a;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p2}, Landroidx/documentfile/a/a;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 7
    invoke-virtual {p2}, Landroidx/documentfile/a/a;->g()Landroid/net/Uri;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0

    .line 9
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "directory with same name already exists"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 11
    invoke-virtual {p1, p3, p4}, Landroidx/documentfile/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/a/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/documentfile/a/a;->g()Landroid/net/Uri;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0

    .line 13
    :cond_2
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    throw p0
.end method

.method public static getStorageOutputStream(Landroid/content/Context;Landroidx/documentfile/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-static {p0, p1, p2}, Lcom/serenegiant/utils/SAFUtils;->getStorage(Landroid/content/Context;Landroidx/documentfile/a/a;Ljava/lang/String;)Landroidx/documentfile/a/a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p1, p4}, Landroidx/documentfile/a/a;->d(Ljava/lang/String;)Landroidx/documentfile/a/a;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 16
    invoke-virtual {p2}, Landroidx/documentfile/a/a;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 18
    invoke-virtual {p2}, Landroidx/documentfile/a/a;->g()Landroid/net/Uri;

    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0

    .line 20
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "directory with same name already exists"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 22
    invoke-virtual {p1, p3, p4}, Landroidx/documentfile/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/a/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/documentfile/a/a;->g()Landroid/net/Uri;

    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0

    .line 24
    :cond_2
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    throw p0
.end method

.method public static getStorageUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isLollipop()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {p1}, Lcom/serenegiant/utils/SAFUtils;->getKey(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/serenegiant/utils/SAFUtils;->loadUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getPersistedUriPermissions()Ljava/util/List;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UriPermission;

    .line 5
    invoke-virtual {v1}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static handleOnResult(Landroid/content/Context;IILandroid/content/Intent;Lcom/serenegiant/utils/SAFUtils$handleOnResultDelegater;)Z
    .locals 1

    if-eqz p3, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    :try_start_0
    invoke-interface {p4, p1, p2, p3}, Lcom/serenegiant/utils/SAFUtils$handleOnResultDelegater;->onResult(ILandroid/net/Uri;Landroid/content/Intent;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p2

    .line 3
    sget-object v0, Lcom/serenegiant/utils/SAFUtils;->TAG:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/serenegiant/utils/SAFUtils;->getKey(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/serenegiant/utils/SAFUtils;->clearUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    invoke-interface {p4, p1, p3}, Lcom/serenegiant/utils/SAFUtils$handleOnResultDelegater;->onFailed(ILandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 6
    sget-object p1, Lcom/serenegiant/utils/SAFUtils;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static hasStorageAccess(Landroid/content/Context;I)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isLollipop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1}, Lcom/serenegiant/utils/SAFUtils;->getKey(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/serenegiant/utils/SAFUtils;->loadUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getPersistedUriPermissions()Ljava/util/List;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/UriPermission;

    .line 5
    invoke-virtual {v0}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static listFiles(Landroid/content/Context;Landroidx/documentfile/a/a;Lcom/serenegiant/utils/SAFUtils$FileFilter;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/documentfile/a/a;",
            "Lcom/serenegiant/utils/SAFUtils$FileFilter;",
            ")",
            "Ljava/util/Collection<",
            "Landroidx/documentfile/a/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroidx/documentfile/a/a;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Landroidx/documentfile/a/a;->j()[Landroidx/documentfile/a/a;

    move-result-object p1

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    if-eqz p2, :cond_0

    .line 5
    invoke-interface {p2, v2}, Lcom/serenegiant/utils/SAFUtils$FileFilter;->accept(Landroidx/documentfile/a/a;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method private static loadUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    sget-object p1, Lcom/serenegiant/utils/SAFUtils;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v0
.end method

.method private static prepareCreateDocument(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "android.intent.extra.TITLE"

    .line 4
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method private static prepareOpenDocumentIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static prepareStorageAccessPermission()Landroid/content/Intent;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static releaseStorageAccessPermission(Landroid/content/Context;I)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isLollipop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/serenegiant/utils/SAFUtils;->getKey(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Lcom/serenegiant/utils/SAFUtils;->loadUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->releasePersistableUriPermission(Landroid/net/Uri;I)V

    .line 5
    invoke-static {p0, p1}, Lcom/serenegiant/utils/SAFUtils;->clearUri(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static requestCreateDocument(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isKitKat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/serenegiant/utils/SAFUtils;->prepareCreateDocument(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public static requestCreateDocument(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 3
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isKitKat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1, p2}, Lcom/serenegiant/utils/SAFUtils;->prepareCreateDocument(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public static requestCreateDocument(Landroid/app/Fragment;Ljava/lang/String;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 9
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isKitKat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 10
    invoke-static {p1, v0}, Lcom/serenegiant/utils/SAFUtils;->prepareCreateDocument(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public static requestCreateDocument(Landroid/app/Fragment;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 11
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isKitKat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-static {p1, p2}, Lcom/serenegiant/utils/SAFUtils;->prepareCreateDocument(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public static requestCreateDocument(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 13
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isKitKat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 14
    invoke-static {p1, v0}, Lcom/serenegiant/utils/SAFUtils;->prepareCreateDocument(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public static requestCreateDocument(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 15
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isKitKat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-static {p1, p2}, Lcom/serenegiant/utils/SAFUtils;->prepareCreateDocument(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public static requestCreateDocument(Landroidx/fragment/app/d;Ljava/lang/String;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 5
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isKitKat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 6
    invoke-static {p1, v0}, Lcom/serenegiant/utils/SAFUtils;->prepareCreateDocument(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public static requestCreateDocument(Landroidx/fragment/app/d;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 7
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isKitKat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {p1, p2}, Lcom/serenegiant/utils/SAFUtils;->prepareCreateDocument(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public static requestDeleteDocument(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isKitKat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public static requestOpenDocument(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isKitKat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/serenegiant/utils/SAFUtils;->prepareOpenDocumentIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public static requestOpenDocument(Landroid/app/Fragment;Ljava/lang/String;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isKitKat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {p1}, Lcom/serenegiant/utils/SAFUtils;->prepareOpenDocumentIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public static requestOpenDocument(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 7
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isKitKat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {p1}, Lcom/serenegiant/utils/SAFUtils;->prepareOpenDocumentIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public static requestOpenDocument(Landroidx/fragment/app/d;Ljava/lang/String;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 3
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isKitKat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1}, Lcom/serenegiant/utils/SAFUtils;->prepareOpenDocumentIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public static requestStorageAccess(Landroid/app/Activity;I)Landroid/net/Uri;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isLollipop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0, p1}, Lcom/serenegiant/utils/SAFUtils;->getStorageUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/serenegiant/utils/SAFUtils;->prepareStorageAccessPermission()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static requestStorageAccess(Landroid/app/Fragment;I)Landroid/net/Uri;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/serenegiant/utils/SAFUtils;->getStorageUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8
    invoke-static {}, Lcom/serenegiant/utils/SAFUtils;->prepareStorageAccessPermission()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-object v0
.end method

.method public static requestStorageAccess(Landroidx/fragment/app/Fragment;I)Landroid/net/Uri;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 9
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isLollipop()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    invoke-static {v0, p1}, Lcom/serenegiant/utils/SAFUtils;->getStorageUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    .line 12
    invoke-static {}, Lcom/serenegiant/utils/SAFUtils;->prepareStorageAccessPermission()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-object v1
.end method

.method public static requestStorageAccess(Landroidx/fragment/app/d;I)Landroid/net/Uri;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 4
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isLollipop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p0, p1}, Lcom/serenegiant/utils/SAFUtils;->getStorageUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    invoke-static {}, Lcom/serenegiant/utils/SAFUtils;->prepareStorageAccessPermission()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static requestStorageAccessPermission(Landroid/content/Context;ILandroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/serenegiant/utils/SAFUtils;->requestStorageAccessPermission(Landroid/content/Context;ILandroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static requestStorageAccessPermission(Landroid/content/Context;ILandroid/net/Uri;I)Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 2
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isLollipop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 4
    invoke-static {p1}, Lcom/serenegiant/utils/SAFUtils;->getKey(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/serenegiant/utils/SAFUtils;->saveUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    return-object p2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static saveUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method
