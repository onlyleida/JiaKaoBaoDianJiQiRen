.class public final synthetic Lorg/webrtc/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lorg/webrtc/SurfaceTextureHelper;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/SurfaceTextureHelper;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/u;->a:Lorg/webrtc/SurfaceTextureHelper;

    iput p2, p0, Lorg/webrtc/u;->b:I

    iput p3, p0, Lorg/webrtc/u;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/webrtc/u;->a:Lorg/webrtc/SurfaceTextureHelper;

    iget v1, p0, Lorg/webrtc/u;->b:I

    iget v2, p0, Lorg/webrtc/u;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/webrtc/SurfaceTextureHelper;->l(II)V

    return-void
.end method
