.class public final synthetic Lcom/serenegiant/net/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/serenegiant/net/ConnectivityHelper;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/serenegiant/net/ConnectivityHelper;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/serenegiant/net/b;->a:Lcom/serenegiant/net/ConnectivityHelper;

    iput p2, p0, Lcom/serenegiant/net/b;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/serenegiant/net/b;->a:Lcom/serenegiant/net/ConnectivityHelper;

    iget v1, p0, Lcom/serenegiant/net/b;->b:I

    invoke-virtual {v0, v1}, Lcom/serenegiant/net/ConnectivityHelper;->d(I)V

    return-void
.end method
