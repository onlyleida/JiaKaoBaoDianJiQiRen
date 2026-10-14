.class public Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/b;
.super Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a<",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/b;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/io/BufferedReader;

.field private c:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/b;->b:Ljava/io/BufferedReader;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/b;->c:Ljava/io/InputStream;

    return-void
.end method

.method private e(Landroid/location/Location;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide v2, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public bridge synthetic a(Ljava/io/InputStream;ILcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/b;->d(Ljava/io/InputStream;ILcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;->close()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/b;->b:Ljava/io/BufferedReader;

    invoke-static {v0}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/b;->b:Ljava/io/BufferedReader;

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/b;->c:Ljava/io/InputStream;

    return-void
.end method

.method public d(Ljava/io/InputStream;ILcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)Lcn/mucang/android/jiakaoyi/signal/center/model/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/b;->b:Ljava/io/BufferedReader;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/b;->c:Ljava/io/InputStream;

    if-eq p1, p2, :cond_1

    .line 2
    :cond_0
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/b;->b:Ljava/io/BufferedReader;

    .line 3
    :cond_1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/b;->c:Ljava/io/InputStream;

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/b;->b:Ljava/io/BufferedReader;

    invoke-static {p2, p1, p3}, Lcn/mucang/android/jiakaoyi/signal/gps/c;->j(Ljava/io/BufferedReader;Ljava/io/InputStream;Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/k;->c(Landroid/location/Location;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/b;->e(Landroid/location/Location;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 6
    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->o(Lcn/mucang/android/jiakaoyi/signal/center/model/b;)V

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
