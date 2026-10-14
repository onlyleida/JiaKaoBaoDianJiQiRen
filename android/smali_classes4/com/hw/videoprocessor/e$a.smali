.class public Lcom/hw/videoprocessor/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hw/videoprocessor/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hw/videoprocessor/e$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaExtractor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hw/videoprocessor/e$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hw/videoprocessor/e$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/hw/videoprocessor/e$a;->c:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public b(Landroid/media/MediaMetadataRetriever;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hw/videoprocessor/e$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hw/videoprocessor/e$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/hw/videoprocessor/e$a;->c:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_0
    return-void
.end method
