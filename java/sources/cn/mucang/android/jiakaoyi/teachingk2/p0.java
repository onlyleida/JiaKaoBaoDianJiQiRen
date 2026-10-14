package cn.mucang.android.jiakaoyi.teachingk2;

import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.RadioGroup;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.f2;
import cn.mucang.android.jiakaoyi.teachingk2.data.ErrorModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarHeaderDistanceToLineVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.FootBrakeVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.LightVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.RepeatVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.TurnHeadVariable;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.NewCollectItemSingleBinding;
import cn.mucang.sundial.library.activity.InputIdCardActivity;
import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000V\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a \u0010\u0002\u001a\u00020\u0001*\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\b\u001a4\u0010\t\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\f\u001a\u00020\r2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0006\u001a\u001e\u0010\u0011\u001a\u00020\u0001*\u00020\u00122\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00010\u000f\u001a\u001e\u0010\u0011\u001a\u00020\u0001*\u00020\u00152\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00010\u000f\u001a\u0018\u0010\u0017\u001a\u00020\u0001*\u00020\u00182\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00010\u001a¨\u0006\u001b"}, d2 = {"dataChanged", "", "filterList", "Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;", "list", "", "", "step", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "set", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemSingleBinding;", "text", "", InputIdCardActivity.DELETE, "Lkotlin/Function1;", "variable", "setOnChangeListener", "Landroid/widget/CheckBox;", "onChange", "", "Landroid/widget/RadioGroup;", "", "setOnDeleteListener", "Landroid/view/View;", "onClick", "Lkotlin/Function0;", "TeachingK2_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
public final class p0 {
    public static final void a() {
        LiveBus.d(f2.e.class).l(new f2.e());
    }

    public static final void b(ErrorModel errorModel, List<Object> list, Step step) {
        int iNextIndex;
        r.e(errorModel, "<this>");
        r.e(list, "list");
        r.e(step, "step");
        list.add(errorModel);
        if (errorModel.expand) {
            int size = list.size();
            List<Variable> list2 = errorModel.stopVariables;
            if (list2 != null) {
                for (Object it : list2) {
                    if (it instanceof CarHeaderDistanceToLineVariable) {
                        list.add(size, new cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.d(step, (CarHeaderDistanceToLineVariable) it));
                    } else {
                        r.d(it, "it");
                        list.add(it);
                    }
                }
            }
            Collection<? extends Object> errorVariables = errorModel.errorVariables;
            r.d(errorVariables, "errorVariables");
            list.addAll(errorVariables);
            switch (errorModel.errorType) {
                case 1:
                case 2:
                case 3:
                case 4:
                    ListIterator<Object> listIterator = list.listIterator(list.size());
                    while (true) {
                        if (!listIterator.hasPrevious()) {
                            iNextIndex = -1;
                            break;
                        } else if (listIterator.previous() instanceof RepeatVariable) {
                            iNextIndex = listIterator.nextIndex();
                            break;
                        }
                    }
                    break;
                case 5:
                case 6:
                    ListIterator<Object> listIterator2 = list.listIterator(list.size());
                    while (true) {
                        if (!listIterator2.hasPrevious()) {
                            iNextIndex = -1;
                            break;
                        } else if (listIterator2.previous() instanceof LightVariable) {
                            iNextIndex = listIterator2.nextIndex();
                            break;
                        }
                    }
                    break;
                case 7:
                    ListIterator<Object> listIterator3 = list.listIterator(list.size());
                    while (true) {
                        if (!listIterator3.hasPrevious()) {
                            iNextIndex = -1;
                            break;
                        } else if (listIterator3.previous() instanceof FootBrakeVariable) {
                            iNextIndex = listIterator3.nextIndex();
                            break;
                        }
                    }
                    break;
                default:
                    ListIterator<Object> listIterator4 = list.listIterator(list.size());
                    while (true) {
                        if (!listIterator4.hasPrevious()) {
                            iNextIndex = -1;
                            break;
                        } else if (listIterator4.previous() instanceof TurnHeadVariable) {
                            iNextIndex = listIterator4.nextIndex();
                            break;
                        }
                    }
                    break;
            }
            cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.a aVar = new cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.a();
            aVar.f6579a = errorModel;
            if (iNextIndex > -1) {
                list.add(iNextIndex + 1, aVar);
            } else {
                list.add(aVar);
            }
            if (errorModel.hasSelect) {
                cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.e eVar = new cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.e(step);
                eVar.b = errorModel;
                list.add(eVar);
            }
        }
    }

    public static final void g(ViewBindingHolder<NewCollectItemSingleBinding> viewBindingHolder, String text, final Function1<Object, kotlin.v> delete, final Object variable) {
        r.e(viewBindingHolder, "<this>");
        r.e(text, "text");
        r.e(delete, "delete");
        r.e(variable, "variable");
        ((NewCollectItemSingleBinding) viewBindingHolder.getViewBinding()).name.setText(text);
        ((NewCollectItemSingleBinding) viewBindingHolder.getViewBinding()).deleteIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.h0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                p0.h(delete, variable, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(Function1 delete, Object variable, View view) {
        r.e(delete, "$delete");
        r.e(variable, "$variable");
        delete.invoke(variable);
        a();
    }

    public static final void i(CheckBox checkBox, final Function1<? super Boolean, kotlin.v> onChange) {
        r.e(checkBox, "<this>");
        r.e(onChange, "onChange");
        checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.g0
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                p0.k(onChange, compoundButton, z);
            }
        });
    }

    public static final void j(RadioGroup radioGroup, final Function1<? super Integer, kotlin.v> onChange) {
        r.e(radioGroup, "<this>");
        r.e(onChange, "onChange");
        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.f0
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup2, int i) {
                p0.l(onChange, radioGroup2, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(Function1 onChange, CompoundButton compoundButton, boolean z) {
        r.e(onChange, "$onChange");
        onChange.invoke(Boolean.valueOf(z));
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(Function1 onChange, RadioGroup radioGroup, int i) {
        r.e(onChange, "$onChange");
        onChange.invoke(Integer.valueOf(i));
        a();
    }

    public static final void m(View view, final Function0<kotlin.v> onClick) {
        r.e(view, "<this>");
        r.e(onClick, "onClick");
        view.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.i0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                p0.n(onClick, view2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(Function0 onClick, View view) {
        r.e(onClick, "$onClick");
        onClick.invoke();
        a();
    }
}
