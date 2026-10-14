.class public final synthetic Lorg/webrtc/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lorg/webrtc/SurfaceTextureHelper;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/SurfaceTextureHelper;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/w;->a:Lorg/webrtc/SurfaceTextureHelper;

    iput p2, p0, Lorg/webrtc/w;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/webrtc/w;->a:Lorg/webrtc/SurfaceTextureHelper;

    iget v1, p0, Lorg/webrtc/w;->b:I

    invoke-virtual {v0, v1}, Lorg/webrtc/SurfaceTextureHelper;->j(I)V

    return-void
.end method
