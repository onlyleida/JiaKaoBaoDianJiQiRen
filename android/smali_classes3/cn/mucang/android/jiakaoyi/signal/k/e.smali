.class public final synthetic Lcn/mucang/android/jiakaoyi/signal/k/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/signal/k/e0$a;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/k/e0$a;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/e;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0$a;

    iput p2, p0, Lcn/mucang/android/jiakaoyi/signal/k/e;->b:I

    iput p3, p0, Lcn/mucang/android/jiakaoyi/signal/k/e;->c:I

    iput p4, p0, Lcn/mucang/android/jiakaoyi/signal/k/e;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0$a;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/e;->b:I

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/e;->c:I

    iget v3, p0, Lcn/mucang/android/jiakaoyi/signal/k/e;->d:I

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->k(III)V

    return-void
.end method
