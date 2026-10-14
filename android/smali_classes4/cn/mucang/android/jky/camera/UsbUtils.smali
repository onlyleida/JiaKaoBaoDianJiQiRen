.class public final Lcn/mucang/android/jky/camera/UsbUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0007J\u0018\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u0007J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0004H\u0007J\u0015\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0002\u0010\rJ\u0012\u0010\u000e\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000f\u001a\u00020\u0007H\u0007J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcn/mucang/android/jky/camera/UsbUtils;",
        "",
        "()V",
        "getAllSerial",
        "",
        "Lcn/mucang/android/jky/camera/UsbSerial;",
        "getDevBus",
        "",
        "vendor",
        "",
        "getDevBusByDriver",
        "getDevBusByName",
        "devName",
        "(Ljava/lang/String;)Ljava/lang/Integer;",
        "getSerial",
        "devBus",
        "isVideoDriver",
        "",
        "parent",
        "Ljava/io/File;",
        "usbcamera_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcn/mucang/android/jky/camera/UsbUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jky/camera/UsbUtils;

    invoke-direct {v0}, Lcn/mucang/android/jky/camera/UsbUtils;-><init>()V

    sput-object v0, Lcn/mucang/android/jky/camera/UsbUtils;->INSTANCE:Lcn/mucang/android/jky/camera/UsbUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jky/camera/UsbUtils;->getAllSerial$lambda-4(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static final getAllSerial$lambda-4(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    const-string p0, "name"

    .line 1
    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "usb"

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p0, v0, v1, v2}, Lkotlin/text/l;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic getDevBus$default(Lcn/mucang/android/jky/camera/UsbUtils;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "05a3"

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcn/mucang/android/jky/camera/UsbUtils;->getDevBus(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final isVideoDriver(Ljava/io/File;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    .line 2
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v4, p1, v2

    .line 3
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    if-le v3, v5, :cond_2

    return v0

    .line 4
    :cond_2
    new-instance v6, Lkotlin/text/Regex;

    const-string v7, "^(\\d)-\\d\\.?(\\d?):"

    invoke-direct {v6, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "child.name"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-static {v6, v4, v0, v5, v7}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/h;

    move-result-object v4

    if-eqz v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    const/4 p1, 0x1

    if-eq v3, p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0
.end method


# virtual methods
.method public final getAllSerial()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jky/camera/UsbSerial;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jky/camera/UsbUtils;->getDevBusByDriver()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v2, Ljava/io/File;

    const-string v3, "sys/bus/usb/devices"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcn/mucang/android/jky/camera/w;->a:Lcn/mucang/android/jky/camera/w;

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 4
    :cond_0
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_7

    aget-object v6, v2, v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 5
    :try_start_0
    sget-object v9, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 6
    new-instance v9, Ljava/io/File;

    const-string v10, "serial"

    invoke-direct {v9, v6, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v9, v8, v7, v8}, Lkotlin/io/g;->d(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-static {v9, v4}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 7
    invoke-static {v9}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v9

    sget-object v10, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v9}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 8
    :goto_1
    invoke-static {v9}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v9, v8

    :cond_1
    check-cast v9, Ljava/lang/String;

    .line 9
    new-instance v10, Lkotlin/text/Regex;

    const-string v11, "usb(.+)"

    invoke-direct {v10, v11}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v11, "it.name"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x2

    invoke-static {v10, v6, v4, v11, v8}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/h;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v6}, Lkotlin/text/h;->b()Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v6, v7}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v6}, Lkotlin/text/l;->j(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    :goto_2
    if-eqz v9, :cond_6

    if-eqz v8, :cond_6

    .line 10
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 11
    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 12
    new-instance v6, Lcn/mucang/android/jky/camera/UsbSerial;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v7, v9}, Lcn/mucang/android/jky/camera/UsbSerial;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 13
    :cond_5
    new-instance v6, Lcn/mucang/android/jky/camera/UsbSerial;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v7, v9}, Lcn/mucang/android/jky/camera/UsbSerial;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 14
    :cond_7
    :goto_4
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "list.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v1, Lcn/mucang/android/jky/camera/UsbUtils$getAllSerial$$inlined$sortedBy$1;

    invoke-direct {v1}, Lcn/mucang/android/jky/camera/UsbUtils$getAllSerial$$inlined$sortedBy$1;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/s;->G0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getDevBus(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "lsusb"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "process.inputStream"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/text/d;->a:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    instance-of v1, v3, Ljava/io/BufferedReader;

    if-eqz v1, :cond_0

    check-cast v3, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v2, 0x2000

    invoke-direct {v1, v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v3, v1

    .line 3
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v2, :cond_3

    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 5
    :cond_3
    invoke-static {v2, p1, v7, v5, v4}, Lkotlin/text/l;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    if-ne v8, v6, :cond_2

    const/4 v8, 0x1

    :goto_2
    if-eqz v8, :cond_1

    .line 6
    new-instance v8, Lkotlin/text/Regex;

    const-string v9, "Bus (.+) Device"

    invoke-direct {v8, v9}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-static {v8, v2, v7, v5, v4}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/h;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v2}, Lkotlin/text/h;->b()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {v2, v6}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {v2}, Lkotlin/text/l;->j(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    return-object v1
.end method

.method public final getDevBusByDriver()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "sys/bus/usb/drivers/usb"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v6, -0x1

    goto/16 :goto_4

    .line 4
    :cond_0
    array-length v4, v0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    :goto_0
    if-ge v5, v4, :cond_7

    aget-object v8, v0, v5

    .line 5
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_1

    goto/16 :goto_3

    .line 6
    :cond_1
    new-instance v9, Lkotlin/text/Regex;

    const-string v10, "^(\\d)-\\d\\.?(\\d?)"

    invoke-direct {v9, v10}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "parent.name"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static {v9, v10, v3, v11, v12}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/h;

    move-result-object v9

    if-nez v9, :cond_2

    goto :goto_3

    .line 7
    :cond_2
    invoke-interface {v9}, Lkotlin/text/h;->b()Ljava/util/List;

    move-result-object v10

    const/4 v13, 0x1

    invoke-static {v10, v13}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-nez v10, :cond_3

    move-object v10, v12

    goto :goto_1

    :cond_3
    invoke-static {v10}, Lkotlin/text/l;->j(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 8
    :goto_1
    invoke-interface {v9}, Lkotlin/text/h;->b()Ljava/util/List;

    move-result-object v9

    invoke-static {v9, v11}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-nez v9, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v9}, Lkotlin/text/l;->j(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    :goto_2
    const-string v9, "parent"

    if-eqz v10, :cond_5

    if-eqz v12, :cond_5

    .line 9
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 10
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x3

    if-gt v10, v11, :cond_6

    sget-object v10, Lcn/mucang/android/jky/camera/UsbUtils;->INSTANCE:Lcn/mucang/android/jky/camera/UsbUtils;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v8}, Lcn/mucang/android/jky/camera/UsbUtils;->isVideoDriver(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    if-eqz v10, :cond_6

    .line 11
    sget-object v11, Lcn/mucang/android/jky/camera/UsbUtils;->INSTANCE:Lcn/mucang/android/jky/camera/UsbUtils;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v11, v8}, Lcn/mucang/android/jky/camera/UsbUtils;->isVideoDriver(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 12
    invoke-virtual {v1, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    move v3, v7

    :goto_4
    if-eq v6, v2, :cond_9

    if-eqz v3, :cond_8

    .line 13
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 14
    :cond_8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_9
    :goto_5
    const-string v0, "getDevBusByDriver : "

    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 16
    invoke-static {v1}, Lkotlin/collections/s;->M0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getDevBusByName(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    const-string v0, "devName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "usb[/\\\\](\\d+)"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/h;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lkotlin/text/h;->b()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/text/l;->j(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    return-object v3
.end method

.method public final getSerial(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 2
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sys/bus/usb/devices/usb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/serial"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v0}, Lkotlin/io/g;->d(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p1

    :goto_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
