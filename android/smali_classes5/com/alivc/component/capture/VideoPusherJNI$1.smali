.class Lcom/alivc/component/capture/VideoPusherJNI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;


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

    iput-object p1, p0, Lcom/alivc/component/capture/VideoPusherJNI$1;->this$0:Lcom/alivc/component/capture/VideoPusherJNI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoFrame([BJIIIII)V
    .locals 10

    move-object v0, p0

    iget-object v1, v0, Lcom/alivc/component/capture/VideoPusherJNI$1;->this$0:Lcom/alivc/component/capture/VideoPusherJNI;

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v1 .. v9}, Lcom/alivc/component/capture/VideoPusherJNI;->access$000(Lcom/alivc/component/capture/VideoPusherJNI;[BJIIIII)I

    return-void
.end method
