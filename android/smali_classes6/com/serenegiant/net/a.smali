.class public final synthetic Lcom/serenegiant/net/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/serenegiant/net/ConnectivityHelper;

.field public final synthetic b:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcom/serenegiant/net/ConnectivityHelper;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/serenegiant/net/a;->a:Lcom/serenegiant/net/ConnectivityHelper;

    iput-object p2, p0, Lcom/serenegiant/net/a;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/serenegiant/net/a;->a:Lcom/serenegiant/net/ConnectivityHelper;

    iget-object v1, p0, Lcom/serenegiant/net/a;->b:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lcom/serenegiant/net/ConnectivityHelper;->b(Ljava/lang/Throwable;)V

    return-void
.end method
