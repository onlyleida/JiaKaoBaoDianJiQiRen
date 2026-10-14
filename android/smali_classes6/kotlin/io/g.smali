.class public final Lkotlin/io/g;
.super Lkotlin/io/j;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "kotlin/io/FilesKt__FilePathComponentsKt",
        "kotlin/io/FilesKt__FileReadWriteKt",
        "kotlin/io/FilesKt__FileTreeWalkKt",
        "kotlin/io/FilesKt__UtilsKt"
    }
    k = 0x4
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x1
.end annotation


# direct methods
.method public static bridge synthetic b(Ljava/io/File;)[B
    .locals 0

    invoke-static {p0}, Lkotlin/io/FilesKt__FileReadWriteKt;->b(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lkotlin/io/FilesKt__FileReadWriteKt;->d(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lkotlin/io/FilesKt__FileReadWriteKt;->f(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic j(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;
    .locals 0

    invoke-static/range {p0 .. p5}, Lkotlin/io/j;->j(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    return-object p1
.end method

.method public static bridge synthetic k(Ljava/io/File;)Z
    .locals 0

    invoke-static {p0}, Lkotlin/io/j;->k(Ljava/io/File;)Z

    move-result p0

    return p0
.end method
