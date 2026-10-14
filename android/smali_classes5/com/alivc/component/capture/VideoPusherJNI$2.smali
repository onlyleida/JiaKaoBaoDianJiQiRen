.class Lcom/alivc/component/capture/VideoPusherJNI$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alivc/component/capture/VideoPusher$VideoSourceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/component/capture/VideoPusherJNI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alivc/component/capture/VideoPusherJNI;


# direct methods
.method constructor <init>(Lcom/alivc/component/capture/VideoPusherJNI;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/component/capture/VideoPusherJNI$2;->this$0:Lcom/alivc/component/capture/VideoPusherJNI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoFrame(JIIIII)V
    .locals 8

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusherJNI$2;->this$0:Lcom/alivc/component/capture/VideoPusherJNI;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Lcom/alivc/component/capture/VideoPusherJNI;->access$100(Lcom/alivc/component/capture/VideoPusherJNI;JIIIII)I

    return-void
.end method
