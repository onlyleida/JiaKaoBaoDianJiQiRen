.class Lcom/nirvana/tools/logger/storage/FileStorageForQ;
.super Lcom/nirvana/tools/logger/storage/FileStorage;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1d
.end annotation


# instance fields
.field private isExternalStorageLegacy:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirvana/tools/logger/storage/FileStorage;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/nirvana/tools/logger/storage/FileStorageForQ;->isExternalStorageLegacy:Z

    invoke-direct {p0}, Lcom/nirvana/tools/logger/storage/FileStorageForQ;->initExternalStorageLegacy()V

    return-void
.end method

.method private initExternalStorageLegacy()V
    .locals 4

    :try_start_0
    const-class v0, Landroid/os/Environment;

    const-string v1, "isExternalStorageLegacy"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-class v1, Landroid/os/Environment;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nirvana/tools/logger/storage/FileStorageForQ;->isExternalStorageLegacy:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public createNewFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nirvana/tools/logger/storage/FileStorageForQ;->isExternalStorageLegacy:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/nirvana/tools/logger/storage/FileStorage;->createNewFile(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public firstFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/nirvana/tools/logger/storage/FileStorageForQ;->isExternalStorageLegacy:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/nirvana/tools/logger/storage/FileStorage;->firstFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isFileExist(Ljava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nirvana/tools/logger/storage/FileStorageForQ;->isExternalStorageLegacy:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/nirvana/tools/logger/storage/FileStorage;->isFileExist(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
