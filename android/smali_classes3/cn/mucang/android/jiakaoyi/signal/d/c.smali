.class public final synthetic Lcn/mucang/android/jiakaoyi/signal/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:B


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/d/c;->a:Ljava/lang/String;

    iput-byte p2, p0, Lcn/mucang/android/jiakaoyi/signal/d/c;->b:B

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/d/c;->a:Ljava/lang/String;

    iget-byte v1, p0, Lcn/mucang/android/jiakaoyi/signal/d/c;->b:B

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/d/g;->n(Ljava/lang/String;B)Lkotlin/v;

    move-result-object v0

    return-object v0
.end method
