.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/highlight/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

.field public final synthetic b:Lkotlin/jvm/b/l;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;Lkotlin/jvm/b/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/c;->b:Lkotlin/jvm/b/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/c;->b:Lkotlin/jvm/b/l;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->g(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;Lkotlin/jvm/b/l;)V

    return-void
.end method
