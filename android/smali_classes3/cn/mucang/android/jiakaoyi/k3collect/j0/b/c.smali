.class public Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;
.super Lcn/mucang/android/jiakaoyi/k3collect/j0/a;
.source "SourceFile"


# instance fields
.field public d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public m:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public n:Lcn/mucang/android/jiakaoyi/signal/pos/c;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;ILjava/lang/Long;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;ILjava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
