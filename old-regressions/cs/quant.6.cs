
/*++
Copyright (c) 2015 Microsoft Corporation

--*/

using Microsoft.Z3;
using System;
using System.Collections.Generic;

class Test
{
    public void Run()
    {
        Dictionary<string, string> cfg = new Dictionary<string, string>() { };
        
        using (Context ctx = new Context(cfg))
        {
            FuncDecl f = ctx.MkFuncDecl("f", ctx.IntSort, ctx.IntSort);
            FuncDecl g = ctx.MkFuncDecl("g", ctx.IntSort, ctx.IntSort);

            IntExpr a = ctx.MkIntConst("a");
            IntExpr b = ctx.MkIntConst("b");
            IntExpr c = ctx.MkIntConst("c");

            IntExpr x = ctx.MkIntConst("x");

            Solver s = ctx.MkSolver();
            Params p = ctx.MkParams();
            p.Add("AUTO_CONFIG", false);
            p.Add("MBQI", false);
            s.Parameters = p;

            s.Assert(ctx.MkForall(new Expr[] { x }, ctx.MkEq(f[g[x]], x), 1, new Pattern[] { ctx.MkPattern(f[g[x]]) }));
            s.Assert(ctx.MkEq(a, g[b]));
            s.Assert(ctx.MkEq(b, c));
            s.Assert(ctx.MkDistinct(f[a], c));

            Console.WriteLine(s);
            Console.WriteLine(s.Check());
        }
    }
}