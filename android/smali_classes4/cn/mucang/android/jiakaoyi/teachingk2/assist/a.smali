.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/assist/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lkotlin/jvm/b/a;

.field public final synthetic e:Lkotlin/jvm/b/a;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;IILkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;

    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/a;->b:I

    iput p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/a;->c:I

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/a;->d:Lkotlin/jvm/b/a;

    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/a;->e:Lkotlin/jvm/b/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/a;->b:I

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/a;->c:I

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/a;->d:Lkotlin/jvm/b/a;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/a;->e:Lkotlin/jvm/b/a;

    invoke-static {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->l(Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;IILkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V

    return-void
.end method
