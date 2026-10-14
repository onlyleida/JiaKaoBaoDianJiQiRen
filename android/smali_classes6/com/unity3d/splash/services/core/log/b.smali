.class public Lcom/unity3d/splash/services/core/log/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/splash/services/core/log/b;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/unity3d/splash/services/core/log/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "UnityAds"

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/splash/services/core/log/b;->a:Ljava/lang/String;

    return-object v0
.end method
