.class public final synthetic Lcn/mucang/android/jiakaoyi/signal/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:[B

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>([BLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/e/b;->a:[B

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/e/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/e/b;->a:[B

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/e/b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/e/e;->f([BLjava/lang/String;)V

    return-void
.end method
