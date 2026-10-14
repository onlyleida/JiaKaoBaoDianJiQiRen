.class Lcom/alivc/live/pusher/AlivcLivePusher$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alivc/live/pusher/AlivcLivePusher$11;->onSnapshot(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alivc/live/pusher/AlivcLivePusher$11;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/alivc/live/pusher/AlivcLivePusher$11;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$11$1;->this$1:Lcom/alivc/live/pusher/AlivcLivePusher$11;

    iput-object p2, p0, Lcom/alivc/live/pusher/AlivcLivePusher$11$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher$11$1;->this$1:Lcom/alivc/live/pusher/AlivcLivePusher$11;

    iget-object v0, v0, Lcom/alivc/live/pusher/AlivcLivePusher$11;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$2900(Lcom/alivc/live/pusher/AlivcLivePusher;)Lcom/alivc/live/pusher/AlivcSnapshotListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$11$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/alivc/live/pusher/AlivcSnapshotListener;->onSnapshot(Landroid/graphics/Bitmap;)V

    return-void
.end method
