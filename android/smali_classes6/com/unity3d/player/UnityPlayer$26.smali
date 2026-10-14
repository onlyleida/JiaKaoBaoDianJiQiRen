.class final Lcom/unity3d/player/UnityPlayer$26;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->startOrientationListener(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$26;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final onOrientationChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$26;->a:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, v0, Lcom/unity3d/player/UnityPlayer;->m_MainThread:Lcom/unity3d/player/UnityPlayer$f;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->access$4300(Lcom/unity3d/player/UnityPlayer;)I

    move-result v0

    invoke-virtual {v1, v0, p1}, Lcom/unity3d/player/UnityPlayer$f;->a(II)V

    return-void
.end method
