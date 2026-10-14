.class public final synthetic Lcn/mucang/android/jiakaoyi/signal/k/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/com/x/b;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/signal/k/f0;

.field public final synthetic b:I

.field public final synthetic c:[B


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/k/f0;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/c0;->a:Lcn/mucang/android/jiakaoyi/signal/k/f0;

    iput p2, p0, Lcn/mucang/android/jiakaoyi/signal/k/c0;->b:I

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/signal/k/c0;->c:[B

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/c0;->a:Lcn/mucang/android/jiakaoyi/signal/k/f0;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/c0;->b:I

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/c0;->c:[B

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->B(I[B)[B

    move-result-object v0

    return-object v0
.end method
