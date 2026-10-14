.class public final synthetic Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;

.field public final synthetic b:[B

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;[BLcn/mucang/android/jiakaoyi/signal/com/Cmd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/g;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/g;->b:[B

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/g;->c:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/g;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/g;->b:[B

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/g;->c:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->v([BLcn/mucang/android/jiakaoyi/signal/com/Cmd;)V

    return-void
.end method
