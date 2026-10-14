.class Lcom/serenegiant/net/ConnectivityHelper$MyOnNetworkActiveListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/ConnectivityManager$OnNetworkActiveListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/net/ConnectivityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnNetworkActiveListener"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/serenegiant/net/ConnectivityHelper;


# direct methods
.method public constructor <init>(Lcom/serenegiant/net/ConnectivityHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/serenegiant/net/ConnectivityHelper$MyOnNetworkActiveListener;->this$0:Lcom/serenegiant/net/ConnectivityHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class p1, Lcom/serenegiant/net/ConnectivityHelper$MyOnNetworkActiveListener;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/net/ConnectivityHelper$MyOnNetworkActiveListener;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onNetworkActive()V
    .locals 0

    return-void
.end method
