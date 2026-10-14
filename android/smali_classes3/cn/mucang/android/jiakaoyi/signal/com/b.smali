.class public final synthetic Lcn/mucang/android/jiakaoyi/signal/com/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/com/x/b;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/b;->a:I

    iput p2, p0, Lcn/mucang/android/jiakaoyi/signal/com/b;->b:I

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 2

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/b;->a:I

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/b;->b:I

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/com/q;->a(II)[B

    move-result-object v0

    return-object v0
.end method
