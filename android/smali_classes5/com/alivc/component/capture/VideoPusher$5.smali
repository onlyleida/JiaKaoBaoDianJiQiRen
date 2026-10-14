.class Lcom/alivc/component/capture/VideoPusher$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alivc/component/capture/VideoPusher;->cameraAutoFocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alivc/component/capture/VideoPusher;


# direct methods
.method constructor <init>(Lcom/alivc/component/capture/VideoPusher;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/component/capture/VideoPusher$5;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 0

    iget-object p1, p0, Lcom/alivc/component/capture/VideoPusher$5;->this$0:Lcom/alivc/component/capture/VideoPusher;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/alivc/component/capture/VideoPusher;->access$1602(Lcom/alivc/component/capture/VideoPusher;Z)Z

    return-void
.end method
