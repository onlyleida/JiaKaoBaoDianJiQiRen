.class public Lcn/mucang/android/jiakaoyi/signal/i/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/i/a;


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/signal/i/c;

.field private final b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final c:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/i/b;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 3
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/i/c;->a(D)Lcn/mucang/android/jiakaoyi/signal/i/c;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/i/b;->a:Lcn/mucang/android/jiakaoyi/signal/i/c;

    .line 4
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/i/c;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/i/b;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/i/b;->a:Lcn/mucang/android/jiakaoyi/signal/i/c;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/i/c;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/i/b;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    neg-double v1, v1

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    neg-double v3, v3

    invoke-virtual {p1, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/i/b;->a:Lcn/mucang/android/jiakaoyi/signal/i/c;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/i/b;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/i/c;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object p1

    return-object p1
.end method

.method public c()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/i/b;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    return-object v0
.end method

.method public getZero()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/i/b;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    return-object v0
.end method
