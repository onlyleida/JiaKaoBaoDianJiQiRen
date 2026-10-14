.class public Lcom/mobile/auth/k/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobile/auth/k/g$a;
    }
.end annotation


# static fields
.field private static a:Lcom/mobile/auth/k/g;


# instance fields
.field private b:Lcom/mobile/auth/k/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mobile/auth/k/g;
    .locals 2

    sget-object v0, Lcom/mobile/auth/k/g;->a:Lcom/mobile/auth/k/g;

    if-nez v0, :cond_1

    const-class v0, Lcom/mobile/auth/k/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mobile/auth/k/g;->a:Lcom/mobile/auth/k/g;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mobile/auth/k/g;

    invoke-direct {v1}, Lcom/mobile/auth/k/g;-><init>()V

    sput-object v1, Lcom/mobile/auth/k/g;->a:Lcom/mobile/auth/k/g;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/mobile/auth/k/g;->a:Lcom/mobile/auth/k/g;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/mobile/auth/k/g$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/k/g;->b:Lcom/mobile/auth/k/g$a;

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/mobile/auth/k/g;->b:Lcom/mobile/auth/k/g$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobile/auth/k/g;->b:Lcom/mobile/auth/k/g$a;

    :cond_0
    return-void
.end method
