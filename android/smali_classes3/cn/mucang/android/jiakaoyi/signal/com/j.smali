.class public final synthetic Lcn/mucang/android/jiakaoyi/signal/com/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcn/mucang/android/jiakaoyi/framework/h/b;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/com/Cmd;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/j;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/com/j;->b:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/signal/com/j;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/signal/com/j;->d:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/j;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/j;->b:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/j;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/com/j;->d:Lcn/mucang/android/jiakaoyi/framework/h/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i;

    invoke-static {v0, v1, v2, v3, p1}, Lcn/mucang/android/jiakaoyi/signal/com/q;->m(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/com/Cmd;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i;)Lkotlin/v;

    move-result-object p1

    return-object p1
.end method
