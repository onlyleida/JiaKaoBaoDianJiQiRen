.class Lcom/alivc/component/capture/ScreenPusherJNI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alivc/component/capture/ScreenPusher$VideoSourceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/component/capture/ScreenPusherJNI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alivc/component/capture/ScreenPusherJNI;


# direct methods
.method constructor <init>(Lcom/alivc/component/capture/ScreenPusherJNI;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/component/capture/ScreenPusherJNI$1;->this$0:Lcom/alivc/component/capture/ScreenPusherJNI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoFrame(JIII)V
    .locals 7

    iget-object v0, p0, Lcom/alivc/component/capture/ScreenPusherJNI$1;->this$0:Lcom/alivc/component/capture/ScreenPusherJNI;

    invoke-static {v0}, Lcom/alivc/component/capture/ScreenPusherJNI;->access$000(Lcom/alivc/component/capture/ScreenPusherJNI;)I

    move-result v5

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/alivc/component/capture/ScreenPusherJNI;->access$100(Lcom/alivc/component/capture/ScreenPusherJNI;JIIII)I

    return-void
.end method
