.class public final synthetic Lcn/mucang/android/jiakaoyi/signal/e/a;
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

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/e/a;->a:[B

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/e/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/e/a;->a:[B

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/e/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/e/e;->e([BLjava/lang/String;)V

    return-void
.end method
