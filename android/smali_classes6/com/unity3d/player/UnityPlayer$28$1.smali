.class final Lcom/unity3d/player/UnityPlayer$28$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer$28;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/UnityPlayer$28;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer$28;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$28$1;->a:Lcom/unity3d/player/UnityPlayer$28;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$28$1;->a:Lcom/unity3d/player/UnityPlayer$28;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$28;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->access$1400(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method
