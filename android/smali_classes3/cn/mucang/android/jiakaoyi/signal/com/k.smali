.class public final synthetic Lcn/mucang/android/jiakaoyi/signal/com/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/com/x/b;


# instance fields
.field public final synthetic a:B

.field public final synthetic b:Z

.field public final synthetic c:B

.field public final synthetic d:B


# direct methods
.method public synthetic constructor <init>(BZBB)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/k;->a:B

    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/signal/com/k;->b:Z

    iput-byte p3, p0, Lcn/mucang/android/jiakaoyi/signal/com/k;->c:B

    iput-byte p4, p0, Lcn/mucang/android/jiakaoyi/signal/com/k;->d:B

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 4

    iget-byte v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/k;->a:B

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/k;->b:Z

    iget-byte v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/k;->c:B

    iget-byte v3, p0, Lcn/mucang/android/jiakaoyi/signal/com/k;->d:B

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/com/q;->d(BZBB)[B

    move-result-object v0

    return-object v0
.end method
