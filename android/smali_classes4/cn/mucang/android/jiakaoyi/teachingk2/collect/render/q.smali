.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

.field public final synthetic b:Landroid/widget/EditText;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;Landroid/widget/EditText;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/q;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/q;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/q;->c:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/q;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/q;->b:Landroid/widget/EditText;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/q;->c:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->U(Landroid/widget/EditText;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Landroid/content/DialogInterface;I)V

    return-void
.end method
