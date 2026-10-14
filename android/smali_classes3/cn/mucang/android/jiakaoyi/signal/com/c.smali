.class public final synthetic Lcn/mucang/android/jiakaoyi/signal/com/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/framework/h/b;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/signal/com/Cmd;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/c;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/com/c;->b:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    iput p3, p0, Lcn/mucang/android/jiakaoyi/signal/com/c;->c:I

    iput p4, p0, Lcn/mucang/android/jiakaoyi/signal/com/c;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/c;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/c;->b:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/c;->c:I

    iget v3, p0, Lcn/mucang/android/jiakaoyi/signal/com/c;->d:I

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i;

    invoke-static {v0, v1, v2, v3, p1}, Lcn/mucang/android/jiakaoyi/signal/com/q;->j(Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/signal/com/Cmd;IILcn/mucang/android/jiakaoyi/signal/communicate/receive/i;)Lkotlin/v;

    move-result-object p1

    return-object p1
.end method
