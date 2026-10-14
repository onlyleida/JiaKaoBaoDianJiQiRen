.class public Lcom/alivc/component/player/BGMPlayer/BGMPlayerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAliPlayerWrapper(Landroid/content/Context;Z)Lcom/alivc/component/player/BGMPlayer/IBGMPlayer;
    .locals 0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamic;

    invoke-direct {p1, p0}, Lcom/alivc/component/player/BGMPlayer/BGMPlayerDynamic;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;

    invoke-direct {p1, p0}, Lcom/alivc/component/player/BGMPlayer/BGMPlayerPlatformAPI;-><init>(Landroid/content/Context;)V

    return-object p1
.end method
