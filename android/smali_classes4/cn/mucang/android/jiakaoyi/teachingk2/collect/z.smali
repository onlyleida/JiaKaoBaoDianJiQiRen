.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/collect/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lkotlin/jvm/b/a;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/b/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/z;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/z;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/z;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/z;->d:Lkotlin/jvm/b/a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/z;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/z;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/z;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/z;->d:Lkotlin/jvm/b/a;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/e0;->l(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/b/a;Landroid/content/DialogInterface;I)V

    return-void
.end method
