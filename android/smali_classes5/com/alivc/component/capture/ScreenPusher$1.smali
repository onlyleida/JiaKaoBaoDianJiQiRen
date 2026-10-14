.class Lcom/alivc/component/capture/ScreenPusher$1;
.super Landroid/media/projection/MediaProjection$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/component/capture/ScreenPusher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alivc/component/capture/ScreenPusher;


# direct methods
.method constructor <init>(Lcom/alivc/component/capture/ScreenPusher;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/component/capture/ScreenPusher$1;->this$0:Lcom/alivc/component/capture/ScreenPusher;

    invoke-direct {p0}, Landroid/media/projection/MediaProjection$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/media/projection/MediaProjection$Callback;->onStop()V

    return-void
.end method
