.class public final synthetic Lcn/mucang/android/jiakaoyi/signal/com/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/h;->a:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    iput p2, p0, Lcn/mucang/android/jiakaoyi/signal/com/h;->b:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/h;->a:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/h;->b:I

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/com/q;->e(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;I)Lkotlin/v;

    move-result-object v0

    return-object v0
.end method
