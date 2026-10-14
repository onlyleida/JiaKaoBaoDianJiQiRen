.class Lcom/alivc/component/capture/VideoPusher$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alivc/component/capture/VideoPusher;->setFocus(FF)V
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

    iput-object p1, p0, Lcom/alivc/component/capture/VideoPusher$3;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 0

    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
