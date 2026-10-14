.class Lcom/alivc/component/encoder/SurfaceReader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alivc/component/encoder/SurfaceReader;-><init>(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alivc/component/encoder/SurfaceReader;


# direct methods
.method constructor <init>(Lcom/alivc/component/encoder/SurfaceReader;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/component/encoder/SurfaceReader$1;->this$0:Lcom/alivc/component/encoder/SurfaceReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 14

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v0

    const-wide/32 v1, 0x9c40

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v3, :cond_1

    iget-object v5, p0, Lcom/alivc/component/encoder/SurfaceReader$1;->this$0:Lcom/alivc/component/encoder/SurfaceReader;

    invoke-static {v5}, Lcom/alivc/component/encoder/SurfaceReader;->access$000(Lcom/alivc/component/encoder/SurfaceReader;)J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v10

    iget-object v0, p0, Lcom/alivc/component/encoder/SurfaceReader$1;->this$0:Lcom/alivc/component/encoder/SurfaceReader;

    invoke-static {v0}, Lcom/alivc/component/encoder/SurfaceReader;->access$100(Lcom/alivc/component/encoder/SurfaceReader;)J

    move-result-wide v11

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-static/range {v5 .. v13}, Lcom/alivc/component/encoder/SurfaceReader;->access$200(Lcom/alivc/component/encoder/SurfaceReader;JIIIJLjava/nio/ByteBuffer;)V

    :goto_0
    iget-object v0, p0, Lcom/alivc/component/encoder/SurfaceReader$1;->this$0:Lcom/alivc/component/encoder/SurfaceReader;

    invoke-static {v0}, Lcom/alivc/component/encoder/SurfaceReader;->access$100(Lcom/alivc/component/encoder/SurfaceReader;)J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-static {v0, v3, v4}, Lcom/alivc/component/encoder/SurfaceReader;->access$102(Lcom/alivc/component/encoder/SurfaceReader;J)J

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    array-length v0, v0

    new-array v12, v0, [Ljava/nio/ByteBuffer;

    :goto_1
    if-ge v4, v0, :cond_2

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, v12, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/alivc/component/encoder/SurfaceReader$1;->this$0:Lcom/alivc/component/encoder/SurfaceReader;

    invoke-static {v5}, Lcom/alivc/component/encoder/SurfaceReader;->access$000(Lcom/alivc/component/encoder/SurfaceReader;)J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v9

    iget-object v0, p0, Lcom/alivc/component/encoder/SurfaceReader$1;->this$0:Lcom/alivc/component/encoder/SurfaceReader;

    invoke-static {v0}, Lcom/alivc/component/encoder/SurfaceReader;->access$100(Lcom/alivc/component/encoder/SurfaceReader;)J

    move-result-wide v10

    invoke-static/range {v5 .. v12}, Lcom/alivc/component/encoder/SurfaceReader;->access$300(Lcom/alivc/component/encoder/SurfaceReader;JIIJ[Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :goto_2
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void
.end method
