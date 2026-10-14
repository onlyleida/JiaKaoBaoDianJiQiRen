.class public final synthetic Lcn/mucang/android/jiakaoyi/signal/com/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/g;->a:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    iput p2, p0, Lcn/mucang/android/jiakaoyi/signal/com/g;->b:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/g;->a:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/g;->b:I

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/signal/com/q;->g(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;ILcn/mucang/android/jiakaoyi/signal/communicate/receive/i;)Lkotlin/v;

    move-result-object p1

    return-object p1
.end method
